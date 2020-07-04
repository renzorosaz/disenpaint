import 'package:flutter/material.dart';


class SliverListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /* appBar:AppBar(
        backgroundColor: Colors.red,
      ), */
      /* body: _ListaTareas() */
     /*  body: _Titulo(), */
    body:Stack(
      children: [
        _MainScroll(),
         Positioned(
           bottom: -10,
           right:0,
           child: _BotonNewList()
        ),
      ],
      ),
    );
  }
}
class _BotonNewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size= MediaQuery.of(context).size;

    return ButtonTheme(
      minWidth: size.width*0.9,
      height: 100,
      child: RaisedButton(
        color: Colors.redAccent[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(50))
        ),
          onPressed: (){},
          child: Text(
            'CREATE NEW LIST',
            style: TextStyle(
              color:Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3
            ),
          ),
      ),

    );

  }
}
class _MainScroll extends StatelessWidget {

   final items = [
    _ListItem( titulo: 'Orange', color: Color(0xffF08F66) ),
    _ListItem( titulo: 'Family', color: Color(0xffF2A38A) ),
    _ListItem( titulo: 'Subscriptions', color: Color(0xffF7CDD5) ),
    _ListItem( titulo: 'Books', color: Color(0xffFCEBAF) ),
    _ListItem( titulo: 'Orange', color: Color(0xffF08F66) ),
    _ListItem( titulo: 'Family', color: Color(0xffF2A38A) ),
    _ListItem( titulo: 'Subscriptions', color: Color(0xffF7CDD5) ),
    _ListItem( titulo: 'Books', color: Color(0xffFCEBAF) ),
  ];


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [
          /* SliverAppBar(
            backgroundColor: Colors.red,
            title:Text('Hola Mundo'),
          ), */
          SliverPersistentHeader(
            floating: true,
            delegate: _SliverCustomHeaderDelegate(
              minheight: 170,
              maxheight: 200,
              child: Container(
                alignment: Alignment.centerLeft,
                color:Colors.white,
                child:_Titulo(),
              )
            ),
            
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ...items,
              SizedBox(height: 100,)
              ]),
          )

      ],
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {


  final double minheight;
  final double maxheight;
  final Widget child;
  
  _SliverCustomHeaderDelegate({
     @required this.minheight,
    @required this.maxheight,
    @required this.child
  });

  @override
  Widget build(BuildContext  context, double shrinkOffset, bool overlapsContent) {

      return SizedBox.expand(child: child);
    }

    @override

    double get maxExtent =>  maxheight;

    @override

    double get minExtent => minheight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    var child;
    return maxheight != maxheight ||
          minheight  != minheight ||
          child      != child;
  }

  }






class _Titulo extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height:30),
        Container(
          margin: EdgeInsets.symmetric(horizontal:30, vertical:20),
          child:Text('New', style: TextStyle(color : Color(0xff532128),fontSize: 50 ),)
        ),
        Stack(
          children: [
            SizedBox(width: 100),
            Positioned(
              bottom: 8,
                child: Container(
                width:139,
                height: 10,
                color:Color(0xffF7CDD5)
              ),
            ),
            Container(
              child: Text('List', style: TextStyle(color:Color(0xffD93A30), fontSize: 50),),
            )
          ],
        )
      ],
    );
  }
}

class _ListaTareas extends StatelessWidget {

  final items = [
    _ListItem( titulo: 'Orange', color: Color(0xffF08F66) ),
    _ListItem( titulo: 'Family', color: Color(0xffF2A38A) ),
    _ListItem( titulo: 'Subscriptions', color: Color(0xffF7CDD5) ),
    _ListItem( titulo: 'Books', color: Color(0xffFCEBAF) ),
    _ListItem( titulo: 'Orange', color: Color(0xffF08F66) ),
    _ListItem( titulo: 'Family', color: Color(0xffF2A38A) ),
    _ListItem( titulo: 'Subscriptions', color: Color(0xffF7CDD5) ),
    _ListItem( titulo: 'Books', color: Color(0xffFCEBAF) ),
  ];
  

  @override
  Widget build(BuildContext context) {
    

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => items[index]);
  }

}



class _ListItem extends StatelessWidget {
 
final String titulo;
final Color color;

  const _ListItem({this.titulo, this.color});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text(titulo, style: TextStyle(color:Colors.white, fontWeight: FontWeight.normal, fontSize: 25),),
      padding: EdgeInsets.all(30),
      alignment: Alignment.centerLeft,
      height: 130,
      margin: EdgeInsets.all(10),
     decoration: BoxDecoration(
      color:color,
      borderRadius: BorderRadius.circular(30)
    ),
    );
  }
}