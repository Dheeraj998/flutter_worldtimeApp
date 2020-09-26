import 'package:flutter/material.dart';
import 'package:my_app/pages/choose_location.dart';
import 'package:my_app/pages/loading.dart';

import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => HomeScreen(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: HomeScreen(), routes: {
//       '/': (context) => Loading(),
//       '/home': (context) => HomeScreen(),
//       '/location': (context) => ChooseLocation(),
//     });
//   }
// }
