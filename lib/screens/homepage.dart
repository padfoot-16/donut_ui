import 'package:donutui/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/burger.dart';
import '../tabs/donut.dart';
import '../tabs/pancake.dart';
import '../tabs/pizza.dart';

 class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<Widget> myTabs=[
    MyTab(
      iconpath: 'lib/assets/icons/donut.png',
      ),
    MyTab(
      iconpath: 'lib/assets/icons/burger.png',
      ),
    MyTab(
      iconpath: 'lib/assets/icons/pancakes.png',
      ),
    MyTab(
      iconpath: 'lib/assets/icons/pizza-slice.png',
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left:15),
            child: IconButton(
              icon:const Icon(Icons.menu),
              color: Colors.grey,
              iconSize: 36,
              onPressed: () {
                
              },
            ),
          ),
          actions: [
             Padding(
               padding: const EdgeInsets.only(right: 15),
               child: IconButton(
                       icon:const Icon(Icons.person),
                       color: Colors.grey,
                       iconSize: 36,
                       onPressed: () {
                
                       },
                     ),
             ),
          ],
         ),
        body:Column(
          children:  [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
              child: Row(
                children:const [
                  Text("I want to ",
                  style:TextStyle(fontSize: 24),
                  ),
                  Text( "EAT",
                  style:TextStyle(fontSize: 50,
                  fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            TabBar(tabs: myTabs),

            Expanded(
              child:TabBarView(
                children:[
                  Donut(),
                  Burger(),
                  Pancakes(),
                  Pizza(),
                ] )
               ),
            
    
          ],
        ),
      ),
    );
    
  }
}