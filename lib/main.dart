import 'package:flutter/material.dart';

import 'package:todo_application_1/controller/home_screen_controller.dart';
import 'package:todo_application_1/view/splash_screen/splash_screen.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await HomeScreenController.initializeDataBase();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
