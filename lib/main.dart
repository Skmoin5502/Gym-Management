import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gym_management_2/firebase_options.dart';
import 'package:gym_management_2/screens/login_form.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym Management',
      theme: darkTheme,
      home: const LoginScreen(),
      // home: const OwnerHomeScreen(
      //   emailId: 'admin@gmail.com',
      //   pass: 'admin',
      // ),
      // home: const MemberHomeScreen(
      //   emailId: 'nick@gmail.com',
      //   pass: 'nick',
      // ), // Use LoginForm here
    );
  }
}
