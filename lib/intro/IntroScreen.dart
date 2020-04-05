import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:sudharrep/intro/pages/LogoPage.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        children: <Widget>[
          LogoPage(),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {

  final Color color;

  Page(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(color: color,
      child: FlareActor(
        'assets/logo_anim.flr',
        animation: 'anim_in',
      ),
    );
  }
}
