import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_study/model/inputform.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

bool isDarkMode = false;

class _UserListPageState extends State<UserListPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  late Box _darkMode;
  late Box<InputForm> _InputFormbox;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _darkMode = Hive.box('darkModeBox');
    _InputFormbox = Hive.box<InputForm>('inputFormBox');
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CupertinoSwitch(
            value: isDarkMode,
            onChanged: (val) {
              setState(() {
                isDarkMode = val;
                _darkMode.put('darkMode', val);
              });
            },
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(label: Text('name')),
              ),
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(label: Text('age')),
              ),
              ElevatedButton(
                onPressed: () {
                  _InputFormbox.add(
                    InputForm(
                      name: nameController.text,
                      age: int.parse(ageController.text),
                    ),
                  );
                },
                child: const Text('add'),
              ),
            ],
          ),
          const Divider(),
          ValueListenableBuilder(
            valueListenable: Hive.box<InputForm>('inputFormBox').listenable(),
            builder: (context, Box<InputForm> inputFormbox, widget) {
              final users = inputFormbox.values.toList();

              return Expanded(
                child: users.isEmpty
                    ? const Text('empty')
                    : ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, i) {
                          final inputForm = users[i];
                          print(inputForm.key);

                          return ListTile(
                            title: Text(users[i].name),
                            subtitle: Text(users[i].age.toString()),
                          );
                        },
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
