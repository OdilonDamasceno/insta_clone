import 'package:flutter/material.dart';
import 'package:insta_clone/pages/login/login.page.dart';

void main()=> runApp(InstaMain());

class InstaMain extends StatefulWidget {
  @override
  _InstaMainState createState() => _InstaMainState();
}

class _InstaMainState extends State<InstaMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      darkTheme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}