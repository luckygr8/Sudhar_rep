import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> with SingleTickerProviderStateMixin {
  final String _title = 'Sudhar';
  final String _quote = 'We make Progress. Not Excuses.';
  final String _footer = 'Sudhar ® is a registered trademark of Luckygr8';

  static AnimationController _controller;
  static Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 1),vsync: this,upperBound: 0.6);
    _animation = CurvedAnimation(parent: _controller , curve: Curves.linear);

    _controller.addListener((){
      setState((){});
    });
    _controller.forward(from: 0.0);
  }

  @override
  void deactivate() {
    _controller.dispose();
    super.deactivate();
  }

  final TextStyle _quoteStyle = TextStyle(
    color: Colors.grey,
    fontSize: 25,
  );

  TextStyle getStyle(){
    return TextStyle(
      color: Colors.black45.withOpacity(_animation.value),
      fontWeight: FontWeight.w400,
      fontSize: 60,
    );
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: 350,
              child: FlareActor(
                'assets/logo_anim.flr',
                animation: 'anim_in',
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                height: 500,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      _title,
                      style: getStyle(),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      _quote,
                      style: _quoteStyle,
                      textAlign: TextAlign.center,
                    ),
                    Spacer(
                      flex: 12,
                    ),
//                Dots(0),
//                Spacer(flex: 2,),
                    Text(_footer),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//class Dots extends StatelessWidget {
//
//  final int _index;
//  Dots(this._index);
//
//  @override
//  Widget build(BuildContext context) {
//
//    final BoxDecoration _circular = BoxDecoration(
//      color: Colors.white,
//      border: Border.all(color: Colors.blue,width: 2),
//      borderRadius: BorderRadius.circular(20)
//    );
//
//    return Container(
//      child: Row(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Container(height: 10,width: 10,margin: EdgeInsets.symmetric(horizontal: 10),decoration: _circular,),
//          Container(height: 10,width: 10,margin: EdgeInsets.symmetric(horizontal: 10),decoration: _circular,),
//          Container(height: 10,width: 10,margin: EdgeInsets.symmetric(horizontal: 10),decoration: _circular,),
//        ],
//      ),
//    );
//  }
//}
