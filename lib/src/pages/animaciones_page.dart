import 'dart:math';

import 'package:flutter/material.dart';

class AnimacionesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
 

  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>  with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> rotacion;
  Animation<double> opacidad;
   Animation<double> opacidadOut;
  Animation<double> moverDerecha;
  Animation<double> agrandar;

   @override
  void initState() { 

    //animacion controlador
    controller = new  AnimationController(vsync: this,duration: Duration(milliseconds:4000 ));

    rotacion = Tween(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

    opacidad = Tween(begin: 0.1, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0, 0.25, curve:  Curves.easeOut))
    );

     opacidadOut = Tween(begin:0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0.75, 1.0, curve:  Curves.easeInOutQuart))
    );

    moverDerecha= Tween(begin: 0.0 , end:150.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

  //
    agrandar= Tween(begin: 0.0 , end:2.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

    controller.addListener(() {
      
      /* print('Status: ${controller.status}'); */
      if(controller.status == AnimationStatus.completed){
        controller.repeat();
      } /* else  if (controller.status == AnimationStatus.dismissed){
        controller.forward();
        
      } */
    });

    super.initState();

  }
     //animation
  @override
  void dispose(){

    controller.dispose();
    super.dispose();
  }

 


  @override
  Widget build(BuildContext context) {

      //play / reproduccion

      controller.forward();


   return AnimatedBuilder(
     animation: controller,
     child: _Rectangulo(),
     builder: (BuildContext context, Widget childRectangulo) {

      print('Rotacion: ${rotacion.status}');
      print('Opacidad: ${opacidad.status}'); 

       return Transform.translate(
         offset: Offset(moverDerecha.value,0),
           child: Transform.rotate(
           angle: rotacion.value,
           child: Opacity(
             opacity: opacidad.value - opacidadOut.value,
             child: Transform.scale(
               scale: agrandar.value,
               child: childRectangulo
              ),
          )
         ),
       );
     },
   );

  }
}






class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

    return Container(
       width: 80,
       height: 80,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
       
     );
   }
}