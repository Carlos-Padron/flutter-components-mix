import 'package:components_app/Widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName': 'carlos',
      'lastName': 'Padron',
      'email': 'c_0509@hotmail.com',
      'password': '1234567',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: "Correo electronico",
                  hintText: "correo",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: "Password",
                  hintText: "Password del usuario",
                  isPassword: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (myFormKey.currentState!.validate()) {
                      print("Formulario no válido!!!!");
                      return;
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text("Guardar"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
