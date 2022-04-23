import 'package:components_app/Widgets/custom_card_type2.dart';
import 'package:components_app/Widgets/custom_card_type_1.dart';
import 'package:components_app/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const [
          CustomCardType1(),
          CustomCardType2(
            name: "Imagen mamalona",
          ),
          CustomCardType2(
            imageURL:
                'https://www.teahub.io/photos/full/12-122888_kali-linux-background-4k.png',
          ),
          CustomCardType2(
            imageURL:
                'https://www.kali.org/docs/general-use/hidpi/kali-hidpi-mode.gif',
          ),
        ],
      ),
    );
  }
}
