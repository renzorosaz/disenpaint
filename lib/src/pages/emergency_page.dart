import 'package:animate_do/animate_do.dart';
import 'package:disenoava/widgtes/headers.dart';
import 'package:disenoava/widgtes/boton_gordito.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}



class EmergencyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final items = <ItemBoton>[
      new ItemBoton( FontAwesomeIcons.checkSquare, 'Planificar Entrenamientos Físicos', Color(0xff6989F5), Color(0xff906EF5) ),
      
      new ItemBoton( FontAwesomeIcons.plus, 'Planificar Evaluación Física', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.youtube, 'Registrar Ejercicios Físicos Progresivos', Color(0xffF2D572), Color(0xffE06AA3) ),
      
    ];
    
    List<Widget> itemMap = items.map((item) => FadeIn(
      duration: Duration(milliseconds:250),
          child: BotonGordito(
        icon: item.icon,
        texto: item.texto,
        color1 : item.color1,
        color2: item.color2,
        onPress: (){
          print('hola');
        }
       ),
    )
    ).toList();


    return Scaffold(
     /*  backgroundColor: Colors.white, */
      body: Stack(
       children: <Widget>[
         
          Container(
            
            margin:EdgeInsets.only(top:200),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children:<Widget>[
              SizedBox(height: 80,),
              ...itemMap,
              ]
            ),
          ),
       _Encabezado()
       ],
      )
    );
  }
}

class _Encabezado extends StatelessWidget {
  const _Encabezado({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        IconHeader(
        icon:FontAwesomeIcons.adn,
        titulo: 'Asistencia Média',
        subtitulo: 'Haz Solicitado',
        color1: Color.fromRGBO(64, 230, 130, 1.0),
        color2: Color.fromRGBO(5, 117, 230, 1.0),
        ),
        Positioned(
          right:10,
          top:40,
          
          child:  RawMaterialButton(
            shape: CircleBorder(),
            padding: EdgeInsets.all(15.0),
            onPressed: (){},
            child: FaIcon(FontAwesomeIcons.ellipsisV , color:Colors.white))
        )
      ],
        
    );
  }
}

class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
        return BotonGordito(
          icon: FontAwesomeIcons.chartPie,
          texto: 'Distribución de Macronutrientes',
          color1: Color.fromRGBO(64, 230, 130, 1.0),
          color2: Color.fromRGBO(5, 117, 230, 1.0), 
          onPress: (){
            print('CLICK');
          } ,
        );

  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      subtitulo: 'Haz Solicitado',
      titulo:'Asistencia Médica',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
  }
}