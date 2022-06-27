import 'package:components_app/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ListViewBuilerScreen extends StatefulWidget {
  const ListViewBuilerScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilerScreen> createState() => _ListViewBuilerScreenState();
}

class _ListViewBuilerScreenState extends State<ListViewBuilerScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(scrollController.position.pixels);
      print(scrollController.position.maxScrollExtent);

      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add10();
      }
    });
  }

  void add10() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) {
      return;
    }

    isLoading = true;
    setState(() {});
    Future.delayed(const Duration(seconds: 3));

    add10();
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) {
      return;
    }

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: new Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage("assets/flutterDash.png"),
                  image: NetworkImage(
                      "https://picsum.photos/500/300?image${imagesIds[index]}"),
                );
              },
            ),
            if (isLoading)
              Positioned(
                bottom: 40,
                left: (size.width * 0.5) - 30,
                child: const _LoadingIcon(),
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
