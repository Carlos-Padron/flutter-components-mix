import 'package:components_app/Widgets/custom_input_field.dart';
import 'package:components_app/themes/app_themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Screen"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnabled
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnabled,
            onChanged: (checked) {
              if (checked != null) {
                print(checked);
                _sliderEnabled = checked;
              }
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: const Text("Habilitar slider"),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (checked) {
              if (checked != null) {
                print(checked);
                _sliderEnabled = checked;
              }
              setState(() {});
            },
          ),
          Switch.adaptive(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (checked) {
              if (checked != null) {
                print(checked);
                _sliderEnabled = checked;
              }
              setState(() {});
            },
          ),
          SwitchListTile.adaptive(
            title: const Text("Habilitar slider"),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (checked) {
              if (checked != null) {
                print(checked);
                _sliderEnabled = checked;
              }
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    "https://papeleriaricar2.com/images/logo/logo.png"),
                fit: BoxFit.cover,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
