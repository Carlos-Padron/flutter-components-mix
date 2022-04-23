import 'package:components_app/router/app_routes.dart';
import 'package:components_app/themes/app_themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(AppRoutes.menuOptions[index].name),
                leading: Icon(
                  AppRoutes.menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const Listview1Screen(),
                  // );
                  // Navigator.push(context, route);
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              ),
          separatorBuilder: (context, item) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
