import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geetaxi/screens/loginpage.dart';
import 'package:geetaxi/screens/mainpage.dart';
import 'package:geetaxi/screens/registrationpage.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Brand-Regular'
          ),
        home: RegistrationPage(),
        initialRoute: RegistrationPage.id,
        routes: {
          RegistrationPage.id:(context) => RegistrationPage(),
          LoginPage.id: (context) => LoginPage(),
          MainPage.id: (context) => MainPage(),

        },
    );
  }
}
