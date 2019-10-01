import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:ui';

class GradientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent
    ));


    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ]
            )
          )
        ],
      ),
      bottomNavigationBar:  _bottomNavigatorBar(context),
    );
  }

  Widget _titulos(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Pagina de Gradientes", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 5.0),
            Text("Pruebas para ver como hacer un grandiente", overflow: TextOverflow.clip, style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(1.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(79, 128, 251, 0.8),
            Color.fromRGBO(73, 51, 237, 1.0),
          ]
        )
      )
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child:  Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(241, 142, 172, 1.0),
              Color.fromRGBO(220, 214, 214, 1.0),
            ]
          )
        ),
      )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa
        )
      ],
    );
  }

  Widget _bottomNavigatorBar(BuildContext context){
    
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child:  BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Container()
          )
        ]
      )
    );

  }

  Widget _botonesRedondeados(){
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _crearBotonRedondo(Colors.green,Icons.local_taxi,"taxi"),
            _crearBotonRedondo(Colors.yellow,Icons.airplanemode_active,"Avion"),
          ]
        ), 
        TableRow(
          children: [
            _crearBotonRedondo(Colors.blue,Icons.local_shipping,"Camión"),
           _crearBotonRedondo(Colors.red,Icons.tram,"Metro"),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondo(Colors.purple,Icons.airport_shuttle,"buseta"),
            _crearBotonRedondo(Colors.cyan,Icons.drive_eta,"carro"),
          ]
        )
      ],
    );
  }

  Widget _crearBotonRedondo(Color color, IconData icon, String texto){

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
        child: Container(
          height: 150.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0)
              ),
              Text(texto,style: TextStyle(color: color, fontSize: 18)),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );

  }
}