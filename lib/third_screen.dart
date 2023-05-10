import 'package:flutter/material.dart';
import 'package:widgets_examples/user_model.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<UserModel> userModelList = [
      UserModel(
          name: 'João',
          birthday: '12/04/1981',
          isStudent: false,
          isWorking: true),
      UserModel(
          name: 'Maria',
          birthday: '28/01/1993',
          isStudent: true,
          isWorking: true),
      UserModel(
          name: 'Ana',
          birthday: '19/07/2002',
          isStudent: true,
          isWorking: false),
      UserModel(
          name: 'José',
          birthday: '03/12/1973',
          isStudent: false,
          isWorking: false),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Terceira Tela'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('${userModelList[index].name}'),
            subtitle: Text('${userModelList[index].birthday}'),
            trailing:
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Text(userModelList[index].isStudent!
                //         ? 'É Estudante'
                //         : 'Não é Estudante'),
                //     Text(userModelList[index].isWorking!
                //         ? 'Está Trabalhando'
                //         : 'Não Trabalha'),
                //   ],
                // ),
                Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  visible: userModelList[index].isStudent!,
                  child: const Icon(
                    Icons.school,
                    size: 30,
                  ),
                ),
                Visibility(
                  visible: userModelList[index].isWorking!,
                  child: const Icon(
                    Icons.work,
                    size: 30,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: userModelList.length,
      ),
    );
  }
}
