import 'package:flutter/material.dart';

class CuadradoAnimadoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: _CuadradoAnimado()
        ),
    );
  }
}

class _CuadradoAnimado extends StatefulWidget {
  

  @override
  __CuadradoAnimadoState createState() => __CuadradoAnimadoState();
}

class __CuadradoAnimadoState extends State<_CuadradoAnimado> with SingleTickerProviderStateMixin {

        Animation<double> opacidad;
      Animation<double> moverDerecha;
      Animation<double> moverArriba;
      Animation<double> moverIzquierda;
      Animation<double> moverAbajo;
 
      AnimationController controller;
  //animaciones 

  @override
  void initState() { 

    controller = new  AnimationController(vsync: this,duration: Duration(milliseconds:4000 ));
    
    

    moverDerecha= Tween(begin: 0.0 , end:100.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0,0.25, curve: Curves.bounceOut))
    );

    moverArriba= Tween(begin: 0.0 , end:-100.0).animate(
      CurvedAnimation(parent: controller, curve:Interval(0.25,0.5, curve: Curves.bounceOut))
    );

    moverIzquierda= Tween(begin: 0.0 , end:-100.0).animate(
      CurvedAnimation(parent: controller, curve:Interval(0.5,0.75, curve: Curves.bounceOut))
    );

    moverAbajo= Tween(begin: -100.0 , end:-100.0).animate(
      CurvedAnimation(parent: controller, curve:Interval(0.75 , 1.0, curve: Curves.bounceOut))
    );


    controller.addListener(() {
      
      /* print('Status: ${controller.status}'); */
      if(controller.status == AnimationStatus.completed){
        controller.reset();
      } /* else  if (controller.status == AnimationStatus.dismissed){
        controller.forward();
        
      } */
    });


    super.initState();
    //inicia todo
  }

  @override
  void dispose(){
  controller.dispose();
  super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    controller.forward();

   return AnimatedBuilder(
     animation: controller,
     child: Rectangulo(),
     builder: (BuildContext context, Widget childRectangulo) {

       print('Mover: ${moverDerecha.status}');

       return Transform.translate(
         offset: Offset(moverDerecha.value + moverIzquierda.value,moverArriba.value - moverAbajo.value),
         child: childRectangulo,
       );
     },
   );

  }

}

class Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}