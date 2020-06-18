import 'package:disenoava/widgtes/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  const GraficasCircularesPage({Key key}) : super(key: key);

  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  
  double porcentaje=0;
 /*  double porcentajeProte =0;
  double porcentajeCarbo =0;
  double porcentajeGrasa =0; */
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            porcentaje +=10;
            if(porcentaje>100){
              porcentaje =0;
            }
            /*  porcentajeCarbo +=10;
            if(porcentajeCarbo>250){
              porcentajeCarbo =0;
            }
             porcentajeGrasa +=10;
            if(porcentajeGrasa>250){
              porcentajeGrasa =0;
            } */
          });
        }
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[          
             /*  Text('MFT HABITS4LIFE te recomienda',style: TextStyle(fontWeight: FontWeight.bold),), */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  /* CustomRadialProgress(porcentaje: porcentajeProte, color: Colors.greenAccent,tipomacro: 'Proteinas',),//proteinas
                  CustomRadialProgress(porcentaje: porcentajeCarbo, color: Colors.greenAccent[200],tipomacro: 'Carbohidratos',),
                  CustomRadialProgress(porcentaje: porcentajeGrasa, color: Colors.greenAccent[100],tipomacro: 'Grasa',),  //carbohidratos */
                  CustomRadialProgress(porcentaje: porcentaje, color:Colors.black54),
                  CustomRadialProgress(porcentaje: porcentaje, color:Colors.black54),
                ],
              )
            ],
      )
    );
  }
}

class CustomRadialProgress extends StatelessWidget {

  final Color color;
  final double porcentaje;/* 
  final String tipomacro; */
  

  const CustomRadialProgress({   
    @required this.porcentaje,
    @required this.color,/* 
    @required this.tipomacro, */

  }) ;

  

  @override
  Widget build(BuildContext context) {


           return Container(
              width: 100,
              height: 100,
              child: RadialProgress(
                porcentaje :this.porcentaje,
                colorPrimario: this.color,
                colorSecundario: Colors.blueAccent,
                grosorPrimario: 5,
                grosorSecundario: 5,


              ),
            /* Container(
              padding: EdgeInsets.symmetric(horizontal:30,vertical:40),
              child: Text('$porcentaje %'),
            ), */

        /* Text(tipomacro.toString()) */

    );
  }
}