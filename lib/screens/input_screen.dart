import 'package:components_app/Widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName': '',
      'lastName': '',
      'email': '',
      'password': '',
      'role': '',
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
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  formProperty: 'firstName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                  formProperty: 'lastName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Correo electronico",
                  hintText: "correo",
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Password",
                  hintText: "Password del usuario",
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    print(formValues);
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
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
