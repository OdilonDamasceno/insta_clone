import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/customscaffold.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        padding: EdgeInsets.only(left: 28, right: 28),
        child: ListView(
          primary: false,
          children: <Widget>[
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.start,
              runSpacing: 20,
              children: <Widget>[
                Image.asset(
                  'assets/instagramname.png',
                  scale: 2.7,
                ),
                Form(
                  child: Wrap(
                    runAlignment: WrapAlignment.start,
                    runSpacing: 20,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            hintText:
                                'Número de telefone, email ou nome de usuário',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            hintText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        width: 500,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: SizedBox.expand(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Esqueceu seus dados de login? ',
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Obtenha ajuda para entrar.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                        /*recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },*/
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 200,
                  child: GestureDetector(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.face,
                          color: Colors.blue[600],
                        ),
                        Text(
                          'Entrar com o Facebook',
                          style: TextStyle(
                            color: Colors.blue[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 139,
                        height: .5,
                        color: Colors.grey[400],
                      ),
                      Text(' OU '),
                      Container(
                        width: 139,
                        height: .5,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Não tem uma conta? ',
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Cadastre-se.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                        /*recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },*/
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
