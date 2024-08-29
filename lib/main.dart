import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'phone.dart'; // Ensure this import is correct
import 'verify.dart'; // Ensure this import is correct

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),          // Login page as the initial route
        '/signup': (context) => SignUpScreen(), // Register the signup screen route
        '/phone': (context) => MyPhone(),       // Phone verification route
        '/verify': (context) => MyVerify(),     // Verification route
      },
    );
  }
}
