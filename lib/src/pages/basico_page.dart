import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App de diseños'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FadeInImage(
                image: NetworkImage(
                    "https://scontent.fsyq2-1.fna.fbcdn.net/v/t1.0-9/10395187_970385726340181_5412072848864695114_n.jpg?_nc_cat=111&_nc_oc=AQndGdGVigGsKl6DGm-V8yG7Y27VFAL1t8RxOw-TeEXq8pFLiS3yjilVj2mKZD3YEzo&_nc_ht=scontent.fsyq2-1.fna&oh=a370d3cd9d06e74d68dac9d64cf05ea4&oe=5E33B100"),
                placeholder: AssetImage('assets/img/loading.gif'),
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.0),
              _descriptionImg(),
              _bottomIcons(context),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
            ],
          ),
        )
    );
  }

  Widget _descriptionImg() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Viaje al puente de la Amistad",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Un gran viaje, para recordar",
                  style: TextStyle(fontSize: 14, color: Colors.grey))
            ],
          ),
          SizedBox(width: 50.0),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("5")
        ],
      ),
    );
  }

  Widget _bottomIcons(context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: Row(
          children: <Widget>[
            _accion(Icons.phone, "CALL",context,"scroll"),
            SizedBox(width: 50.0),
            _accion(Icons.navigation, "ROUTE",context,"gradiente"),
            SizedBox(width: 50.0),
            _accion(Icons.share, "SHARE",context,"gradiente"),
          ],
        ));
  }

  Widget _accion(IconData icon, String label,BuildContext context,String route) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(icon),
          color: Colors.blue,
          iconSize: 30.0,
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
        ),
        Text(label)
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
        child: Text(
            "El Puente de La Amistad de Taiwán es un puente de paso vehicular y peatonal que se extiende en el estuario de la desembocadura del río Tempisque, entre los cantones de Cañas y Nicoya, en la provincia de Guanacaste, al norte de Costa Rica. El Parque Nacional Palo Verde se encuentra en sus cercanías. Este puente fue terminado en abril de 2003.",
            textAlign: TextAlign.justify,
        )
    );
  }
}
