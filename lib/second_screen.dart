import 'package:flutter/material.dart';
import 'package:widgets_examples/custom_dropdown_button_form_field.dart';
import 'package:widgets_examples/custom_text_button.dart';
import 'package:widgets_examples/custom_text_form_field.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>? items = ['João', 'Maria', 'Ana', 'José'];
    TextEditingController birthdayController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              CustomDropdownButtonFormField(
                hint: const Text('Selecione o Usuário:'),
                prefixIcon: const Icon(Icons.person),
                items: items.map<DropdownMenuItem<String>>(
                  (String? value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value!),
                    );
                  },
                ).toList(),
                onChanged: (dynamic value) {},
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                controller: birthdayController,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextButton(
                onPressed: () {},
                child: const Text('Confirmar'),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
