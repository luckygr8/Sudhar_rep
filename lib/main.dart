import 'package:flutter/material.dart';
import 'base/routes.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/IntroScreen',
  onGenerateRoute: (settings) => Routes.routes(settings)
));
