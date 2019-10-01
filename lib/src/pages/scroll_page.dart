import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  TextStyle textStyle = TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500 );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imgFondo(),
        _textos()
      ],
    );
  }

  Widget _textos(){
    return SafeArea(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Text("Graduación", style: textStyle)
            ),
          ),
          Center(
            child: Text("2017", style: textStyle)
          ),
          Expanded(
            child: Container(),
          ),
          Center(
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 70,
              color: Colors.white,
            )
          ),
        ],
      ),
    );
  }

  Widget _imgFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity, 
      child: Image(
        image: AssetImage("assets/img/torrentes.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity, 
      color: Color.fromRGBO(108, 192, 218, 1.5),
    );
  }





  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity, 
      color: Color.fromRGBO(108, 192, 218, 1.5),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text("Bienvenidos",style: TextStyle(fontSize: 20.0))
          ),
          onPressed: (){

          },
        ),
      ),
    );
  }
}