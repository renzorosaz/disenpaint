
/* import 'package:disenoava/src/pages/graficas_circulares_page.dart'; */
import 'package:disenoava/src/pages/slideshow_page.dart';
import  'package:flutter/material.dart';


void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      home: SlideShowPage()

    );
  }
}