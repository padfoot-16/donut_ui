// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
final String donutflavor;
final String donutprice;
final  Color donutcolor;
final String imageloc;
  
  const DonutTile({
    Key? key,
    required this.donutflavor,
    required this.donutprice,
    required this.imageloc,
    required this.donutcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutcolor,
          borderRadius:  BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(50, 255, 255, 255),
                    borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
          topRight: Radius.circular(12))
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text('\$'+donutprice,style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold 
                    ), )
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
              child: Image.asset(imageloc),
            ),
            // SizedBox(height: 10,),
            Text(donutflavor,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            ),
            // const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 IconButton(
                  icon:Icon(Icons.favorite),
                   onPressed: () {},),
                IconButton(
                  icon:Icon(Icons.add),
                   onPressed: () {},),
              ],),
            )
          ],
        ),
        ),
    );
  }
}
