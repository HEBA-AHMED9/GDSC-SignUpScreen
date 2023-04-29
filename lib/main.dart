import 'package:flutter/material.dart';
import 'Screens/RegesterPage.dart';


void main(){
  
  runApp(const mainPage());
}
class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}