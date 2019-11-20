import 'package:flutter/material.dart';
import 'package:insta_clone/pages/login/create_account/create.account.dart';
import 'package:insta_clone/widgets/customscaffold.dart';

import 'login.dart/login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
        child: ListView(
          primary: false,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 40),
              child: Image.asset(
                'assets/instagramname.png',
                scale: 3.5,
              ),
            ),
            Container(
              width: 200,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()));
                  },
                  child: Text(
                    'Criar nova conta',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 20,
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
