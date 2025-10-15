import 'package:flutter/material.dart';
import 'package:donut_app/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<Widget> mytabs=[
//donutTab
const MyTab(iconPath: 'lib/icons/donut.png',text: "Donut",),
//burger
const MyTab(iconPath:"lib/icons/burger.png",text: "Burger"),
//smoothie,
const MyTab(iconPath:"lib/icons/smoothie.png",text: "Smoothie"),
//pizza
const MyTab(iconPath: "lib/icons/pizza.png",text: "Pizza"),
const MyTab(iconPath: "lib/icons/pancakes.png",text: "Pancakes")
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        
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
        body: Column(
          children: [
            //1 texto principal
             Padding(
               padding: EdgeInsets.only(left: 24.0),
               child: Row(
                 children: [
                   Text("i want to eat",
                   style: TextStyle(fontSize: 24)
                   ),
      
                   Text(" Eat",
                   style: TextStyle(fontSize: 24,
                   fontWeight: FontWeight.bold,
                   decoration: TextDecoration.underline
                   
                   ),
                   )
                 ],
               ),
               
               
             ),
      
      
            //2 pestañas tabbar
            TabBar(tabs: mytabs),
      
            //3 contenido de pestañas (tabbarview)
                Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(), // Evita freeze
              children: const [
                Center(child: Text("Donut content")),
                Center(child: Text("Burger content")),
                Center(child: Text("Smoothie content")),
                Center(child: Text("Pizza content")),
                Center(child: Text("Pancakes content")),
              ],
            ),
          ),
            //4 Carrito (cart)
          ],
        ),
      ),
    );
  }
}