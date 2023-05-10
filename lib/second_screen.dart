import 'package:flutter/material.dart';
import 'package:widgets_examples/custom_checkbox_list_tile.dart';
import 'package:widgets_examples/custom_dropdown_button_form_field.dart';
import 'package:widgets_examples/custom_switch_list_tile.dart';
import 'package:widgets_examples/custom_text_button.dart';
import 'package:widgets_examples/custom_text_form_field.dart';
import 'package:widgets_examples/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String>? items = ['João', 'Maria', 'Ana', 'José'];
  TextEditingController birthdayController = TextEditingController();
  String? userName = '';
  bool? isStudent = false;
  bool? isWorking = false;
  @override
  Widget build(BuildContext context) {
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

              /// Pode ser usado apenas em uma tela Stateless
              CustomDropdownButtonFormField(
                hint: const Text('Selecione o Usuário:'),
                prefixIcon: const Icon(Icons.person),
                items: items?.map<DropdownMenuItem<String>>(
                  (String? value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value!),
                    );
                  },
                ).toList(),
                onChanged: (dynamic value) {
                  userName = value;
                },
              ),
              const SizedBox(
                height: 25,
              ),

              /// Pode ser usado apenas em uma tela Stateless
              CustomTextFormField(
                controller: birthdayController,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomCheckboxListTile(
                value: isStudent,
                onChanged: (bool? newValue) {
                  setState(() {
                    isStudent = newValue;
                  });
                },
                title: const Text('É Estudante?'),
                // tileColor: Colors.green,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomSwitchListTile(
                value: isWorking!,
                onChanged: (bool newValue) {
                  setState(() {
                    isWorking = newValue;
                  });
                },
                title: const Text('Está Trabalhando?'),
                // tileColor: Colors.green,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                      onPressed: () {
                        print('UserName: $userName');
                        print('Nascimento: ${birthdayController.text}');
                        print('É Estudante: $isStudent');
                        print('Está Trabalhando: $isWorking');
                      },
                      sizeWidth: 100,
                      child: const Text('Confirmar'),
                    ),
                    CustomTextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ThirdScreen(),
                          ),
                        );
                      },
                      sizeWidth: 100,
                      backgroundColor: Colors.green,
                      child: const Text('Próxima'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    birthdayController.dispose();
    super.dispose();
  }
}
