import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final String topName;
  final String bottomName;

  const CustomScaffold({
    Key key,
    this.body,
    this.topName = 'português (Brasil)',
    this.bottomName = 'Instagram do Facebook',
  }) : super(key: key);

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  CustomScaffold body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.topName,
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
      body: widget.body,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 0.25,
              color: Colors.grey,
            ),
          ),
        ),
        height: 50,
        alignment: Alignment.center,
        child: Text(
          widget.bottomName,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
      ),
    );
  }
}
