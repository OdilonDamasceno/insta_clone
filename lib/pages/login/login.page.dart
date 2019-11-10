import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: null,
        ),
        preferredSize: Size(kWindowTouchSlop, 80),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Login com Facebook',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
        ),
        height: 50,
        alignment: Alignment.center,
        child: Text(
          'Instagram do Facebook',
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
      ),
    );
  }
}
