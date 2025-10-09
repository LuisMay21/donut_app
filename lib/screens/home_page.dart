import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //para poner el icono de la izquierda
        leading: Icon(
          Icons.menu,
          color: Colors.grey[800],
        ),
        //icono de la derecha
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          ),
        ], 
      ),
      body: const Column(
        children: [
          //1 texto principal
          //2 pestañas tabbar
          //3 contenido de pestañas (tabbarview)
          //4 Carrito (cart)
        ],
      ),
    );
  }
}