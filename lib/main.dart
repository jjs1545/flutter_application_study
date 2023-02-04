import 'package:flutter/material.dart';
import 'package:flutter_application_study/model/inputform.dart';
import 'package:flutter_application_study/pages/user_list_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initHive();

  runApp(const MyApp());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(InputFormAdapter());

  await Hive.openBox('darkModeBox');
  await Hive.openBox<InputForm>('inputFormBox');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box('darkModeBox').listenable(),
        builder: (context, box, widget) {
          final darkMode = box.get('darkMode', defaultValue: false);

          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData.dark(),
            theme: ThemeData(
              primarySwatch: Colors.orange,
            ),
            // home: const JusinHomePage(),
            home: const UserListPage(),
          );
        });
  }
}
