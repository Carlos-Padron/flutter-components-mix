import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? name;

  static const String defaultURL =
      'https://images.wallpapersden.com/image/download/kali-linux-matrix_a2tuamqUmZqaraWkpJRnamtlrWZlbWU.jpg';

  const CustomCardType2({
    Key? key,
    this.imageURL = defaultURL,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: AssetImage('assets/flutterDash.png'),
            width: double.infinity,
            height: 160,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
