import 'package:flutter/material.dart';
class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diseño basico'),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(context),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }
  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://www.itl.cat/pngfile/big/187-1871207_early-spring-wallpaper-japanese-cherry-trees-landscape.jpg'),
      height: 250.0,
      width: double.maxFinite,
      fit: BoxFit.cover
    );
  }
  Widget _crearTitulo(){
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Cherry Blossom', style: estiloTitulo,),
                SizedBox(height: 8.0,),
                Text('Cherry Blossom tree', style:estiloSubTitulo),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0,),
          Text('41', style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }
  Widget _crearAcciones(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call', context),
        _accion(Icons.near_me, 'Route', context),
        _accion(Icons.share, 'share', context),
      ],
    );
  }
  Widget _accion(IconData icon, String texto, BuildContext context){
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, 'scroll'),
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0,),
          SizedBox(height: 4.0,),
          Text(texto, style: TextStyle(fontSize: 16.0, color: Colors.blue),)
        ],
      ),
    );
  }
  Widget _crearTexto(){
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      textAlign: TextAlign.justify,
      )
    );
  }

}