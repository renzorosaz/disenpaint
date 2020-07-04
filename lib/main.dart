/* 
import 'package:disenoava/src/pages/pinterest_page.dart'; */

import 'package:disenoava/src/pages/slider_list_page.dart';
import  'package:flutter/material.dart';
import 'package:disenoava/src/pages/emergency_page.dart';


/* import 'src/pages/slideshow_page.dart';
 */

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      home: SliverListPage()

    );
  }
}