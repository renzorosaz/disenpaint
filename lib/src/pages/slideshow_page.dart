import 'package:disenoava/widgtes/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(      
      /* backgroundColor: Colors.white, */
      body: Column(
         /*  width: 500,
          height: 400,
          color:  Colors.red, */

            children: <Widget>[
              Expanded(child: MiSlideShow()),
              Expanded(child: MiSlideShow()),
            ],
              
      )
    );
  }
}

class MiSlideShow extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

      return Slideshow(
      
      bulletPrimario:5,
      bulletSecundario: 12,
    /*   puntosArriba: false, */
      colorPrimario: Colors.blueAccent,
    /* coloSecundario: Colors.white, */

      slides: <Widget>[
        SvgPicture.asset('assets/1_seleccionar.svg'),
        SvgPicture.asset('assets/2_trainers.svg'),
        SvgPicture.asset('assets/3_chatmft.svg'),/*  */
        SvgPicture.asset('assets/4_distribucion.svg'),
        SvgPicture.asset('assets/5_planificacion.svg'),
        /* Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album),
                subtitle: Text('Restaurante La Fogata'),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                     onPressed: () {/* ... */},
                  ),
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                     onPressed: () {/* ... */},
                  ),
                ],
              )
            ],
          ),
        ) */
      ],
    ) ;

    
  }

}