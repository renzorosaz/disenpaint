import 'package:flutter/material.dart';

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
      height: 300,
      
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