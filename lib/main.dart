import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hw_firebase_week18/profile_screen.dart';
import 'package:hw_firebase_week18/sign_up_screen.dart';

import 'firebase_options.dart';
import 'log_in_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'hw-firebase-week18',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (_) => LoginScreen(),
        '/sign_up': (_) => SignUpScreen(),
        '/profile': (_) => const ProfileScreen(),
      },
    );
  }
}