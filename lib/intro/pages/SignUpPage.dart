import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          MyTextField(hint: "enter your name",icon: Icons.account_circle,),
          MyTextField(hint: "enter your email",icon: Icons.email,)
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {

  final String hint;
  final IconData icon;

  MyTextField({this.hint , this.icon});

  final TextStyle _textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 40 , vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      elevation: 5,
      child: Row(
        children: <Widget>[
          Padding(child: Icon(icon),padding: EdgeInsets.symmetric(horizontal: 20),),
          Expanded(
            flex: 1,
            child: TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.blue,
                style: _textStyle,
                decoration: InputDecoration.collapsed(hintText: hint)
            ),
          ),
        ],
      ),
    );
  }
}

