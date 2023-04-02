import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class Donut extends StatelessWidget {
  
  
  List donutsonsale=[
    ["Ice Cream","36",Colors.pink[200],"lib/assets/images/donuti.png"],
    ["Chocolate","34",Colors.brown[600],"lib/assets/images/donutc.png"],
    ["Coffee","32",Colors.brown[900],"lib/assets/images/donutco.png"],
    ["Strawberry","38",Colors.pink[400],"lib/assets/images/donuts.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsonsale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2 ,
        childAspectRatio: 1/1.5
        ),
     itemBuilder:(context, index) {
       return DonutTile(
        donutflavor: donutsonsale[index][0],
        donutcolor: donutsonsale[index][2],
        donutprice: donutsonsale[index][1],
        imageloc: donutsonsale[index][3],
       );
     }
     );
  }
}