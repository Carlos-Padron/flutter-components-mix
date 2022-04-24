import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: "",
                textCapitalization: TextCapitalization.words,
                onChanged: (str) {},
                validator: (value) {
                  if (value == null) return "Este campo es requerido";
                  return value.length < 3 ? "Minimo de 3 letras" : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: "Nombre dl usuario",
                  labelText: "Nombre",
                  helperText: "Solo letras",
                  counterText: "3 c",
                  suffixIcon: Icon(Icons.group),
                  prefixIcon: Icon(Icons.group),
                  icon: Icon(Icons.abc),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
