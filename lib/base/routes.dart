import 'package:flutter/material.dart';
import 'package:sudharrep/intro/IntroScreen.dart';

class Routes{
  static Route<dynamic> routes(RouteSettings settings){

    switch(settings.name){
      case '/IntroScreen' : return MaterialPageRoute( builder: (_)=> IntroScreen());

      default : return MaterialPageRoute( builder: (_)=> ErrorRoute());
    }
  }
}

class ErrorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('this is wrong screen nigga'),
    );
  }
}
