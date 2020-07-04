import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCuadrado extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
      
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
          )
      ),
    );
  }
}




class HeaderDiagonal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Container(          
     height: double.infinity,
       width: double.infinity,   
   // color: Color(0xff615AAB),
    child: CustomPaint(
      painter:_HeaderDiagonalPaint(),
      
      ),
    );
    
  }
}

  class _HeaderDiagonalPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final paint= new Paint();
      //propiedades
      paint.color = Color(0xff615AAB);
      paint.style= PaintingStyle.fill;// .fill
      paint.strokeWidth = 2;

      final path= Path();

      //Dibujar con e path y lapiz
      path.moveTo(0, size.height * 0.35);
       path.lineTo(size.width, size.height *0.30);
      path.lineTo(size.width,0);
      path.lineTo(0,0);

      

      canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }

      
      }

      class HeaderTriangular extends StatelessWidget {
  

      @override
      Widget build(BuildContext context) {

        return Container(          
        height: double.infinity,
          width: double.infinity,   
      // color: Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderTriangularPainter(),
          
          ),
        );
        
      }
}

  class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final paint= new Paint();
      //propiedades
      paint.color = Color(0xff615AAB);
      paint.style= PaintingStyle.fill;// .fill
      paint.strokeWidth = 10;

      final path= Path();

      //Dibujar con e path y lapiz
      /* path.moveTo(0, size.height * 0.50);
      path.lineTo(size.width, size.height *0.50);
      path.lineTo(size.width,0);
      path.lineTo(0,0); */

      path.moveTo(0,0);
     /*  path.lineTo(size.width, size.height);
       path.lineTo(size.width*1, size.height*-1);  */       
       path.lineTo(size.width, size.height);       
       path.lineTo(0, size.height);    

      canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }

      
      }


class HeaderPico extends StatelessWidget {
  

      @override
      Widget build(BuildContext context) {

        return Container(          
        height: double.infinity,
          width: double.infinity,   
      // color: Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderPicoPainter(),
          
          ),
        );
        
      }
}

  class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final paint= new Paint();
      //propiedades
      paint.color = Color(0xff615AAB);
      paint.style= PaintingStyle.fill;// .fill
      paint.strokeWidth = 10;

      final path= Path();

      path.moveTo(0,0);

      path.lineTo(0,size.height*0.25 );
      path.lineTo(size.width*0.5,size.height*0.30 );
      path.lineTo(size.width,size.height*0.25 );
      path.lineTo(size.width,size.height*-0.25 );

      canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }

      
      }

      class HeaderCurvo extends StatelessWidget {
  

      @override
      Widget build(BuildContext context) {

        return Container(          
        height: double.infinity,
          width: double.infinity,   
      // color: Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderCurvoPainter(),
          
          ),
        );
        
      }
}

  class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final paint= new Paint();
      //propiedades
      paint.color = Color(0xff615AAB);
      paint.style= PaintingStyle.fill;// .fill
      paint.strokeWidth = 20;

      final path= Path();


      path.lineTo(0,size.height*0.25 );     
      path.quadraticBezierTo(size.width*0.2,size.height*0.20 , size.width, size.height*0.25 );
        path.lineTo(size.width,0 ); 


      canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }

      
      }

      class HeaderWave extends StatelessWidget {
  

      @override
      Widget build(BuildContext context) {

        return Container(          
        height: double.infinity,
          width: double.infinity,   
      // color: Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderWavePainter(),
          
          ),
        );
        
      }
}

  class _HeaderWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final paint= new Paint();
      //propiedades
      paint.color = Color(0xff615AAB);
      paint.style= PaintingStyle.fill;// .fill
      paint.strokeWidth = 20;

      final path= Path();


      path.lineTo(0,size.height*0.25 );     
      path.quadraticBezierTo(size.width*0.2,size.height*0.30 , size.width*0.5, size.height*0.25 );
      path.quadraticBezierTo(size.width*0.7,size.height*0.20 , size.width, size.height*0.25 );
      path.lineTo(size.width, 0);
       

      

      canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }

      
      }

      class HeaderWaveGradient extends StatelessWidget {
  

      @override
      Widget build(BuildContext context) {

        return Container(
        height: double.infinity,
          width: double.infinity,   
      // color: Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderWavePainterGradient(),
          
          ),
        );
        
      }
}

  class _HeaderWavePainterGradient extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final Rect rect = new Rect.fromCircle(
        center : Offset(0.0,55.0),
        radius: 180
      );
      final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors:<Color>[
          Colors.lightGreen,
          Colors.green,
          Colors.teal,
        ],
        stops: [
          0.2,
          0.5,
          1.0, 
        ]
      );

      final paint= new Paint()..shader = gradiente.createShader(rect);

      //propiedades
      paint.style= PaintingStyle.fill;// .fill
      paint.strokeWidth = 20;

      final path= Path();


      path.lineTo(0,size.height*0.25 );     
      path.quadraticBezierTo(size.width*0.2,size.height*0.30 , size.width*0.5, size.height*0.25 );
      path.quadraticBezierTo(size.width*0.7,size.height*0.20 , size.width, size.height*0.25 );
      path.lineTo(size.width, 0);
       

      canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }

      
      }

  class IconHeader extends StatelessWidget {

  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader({
    this.icon, 
    this.titulo, 
    this.subtitulo, 
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey 
  });


  @override
  Widget build(BuildContext context) {

    final Color colorBlanco= Colors.white;

    return Stack(
      children:<Widget>[
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),

        Positioned(
          top:-50,
          left:-70,
          child: FaIcon(this.icon,size:250, color: Colors.white.withOpacity(0.2)),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 80, width: double.infinity),
            Text(this.subtitulo, style: TextStyle(fontSize: 20, color: colorBlanco)),
            SizedBox(height: 20),
            Text(this.titulo, style: TextStyle(fontSize: 25, color: colorBlanco,fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            FaIcon(this.icon,size:80, color: Colors.white),
          ],
        )
      ]

    );
  }
}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;
  
  const _IconHeaderBackground({
   this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          colors: <Color>[
            this.color1,
            this.color2
          ]
        )
      ),
    );
  }
}