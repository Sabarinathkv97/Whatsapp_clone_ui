import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/settingspage.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Color(0xff075e55),
          ),
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0))),
      routes: {
        '/': (context) => loginPage(),
        'settingsPage': (context) => settingsPage()
      },
    );
  }
}
