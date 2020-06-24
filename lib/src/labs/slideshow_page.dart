import 'package:disenoava/src/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class SlideShowPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => SliderModel(),
        child: Scaffold(
        body:Center(
            child:Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: _Slides()
                  ),
                  _Dots()
                ],
              ),
          )
          
        )
      ),
    );
  }
}

class _Dots extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _Dot(0),
          _Dot(1),
          _Dot(2),
          _Dot(3),
          _Dot(4),
          
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {  

  final int index;

  _Dot(this.index);

  @override
  Widget build(BuildContext context) {

    final pageViewIndex = Provider.of<SliderModel>(context).currentPage;

    return Container(
      width: 12,
      height: 12,
      margin: EdgeInsets.symmetric(horizontal:5),
      decoration: BoxDecoration(
        color: (pageViewIndex >=  index -0.5 && pageViewIndex < index + 0.5) 
        ? Colors.blueAccent : Colors.grey,
        shape: BoxShape.circle
      ),
    );
  }
}


class _Slides extends StatefulWidget {

  @override
  __SlidesState createState() => __SlidesState();
}

class __SlidesState extends State<_Slides> {

  final pageViewController = new PageController();

 @override
  void initState() {
  super.initState();


    pageViewController.addListener(() {
      
      print('pagina actual : ${pageViewController.page}');

      //Actualizar el provider, sliderModel

      Provider.of<SliderModel>(context, listen: false).currentPage = pageViewController.page ;
    });

  }



  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(/* 
      padding: EdgeInsets.all(10), */
      child: PageView(
        controller: pageViewController,
        children: <Widget>[
        _Slide('assets/1_seleccionar.svg'),
        _Slide('assets/2_trainers.svg'),
        _Slide('assets/3_chatmft.svg'),
        _Slide('assets/4_distribucion.svg'),
        _Slide('assets/5_planificacion.svg')

        ],
      ),
      
    );
  }
}

class _Slide extends StatelessWidget {

  final String svg;

  _Slide(this.svg);

  @override
  Widget build(BuildContext context) {

    /* return SvgPicture.asset('assets/1_seleccionar.svg'); */
    return Container(
          width: double.infinity,
          height: double.infinity,
        padding: EdgeInsets.all(30),
        child: SvgPicture.asset(svg),
    );
  }
}