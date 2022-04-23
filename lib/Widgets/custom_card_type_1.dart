import 'package:flutter/material.dart';

import '../themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(
              Icons.pets,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id molestie nisi. Ut nec dui ac urna rutrum congue in a leo. Donec faucibus ligula quis tortor interdum, nec sodales urna porttitor. Proin nec ipsum ut nulla ornare porttitor. Vivamus aliquet, urna sed varius posuere, ipsum mi dignissim lacus, non faucibus lacus massa fermentum quam. Ut tincidunt velit in rhoncus euismod. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancelar'),
                  style: TextButton.styleFrom(primary: Colors.indigo),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
