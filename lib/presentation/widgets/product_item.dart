import 'package:ecommerce/presentation/screens/detail_Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ProductItem extends StatelessWidget {
  final String title;
  final String descrip;
  const ProductItem({super.key,required this.title, required this.descrip});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedProduct()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.red,
                  // border: Border.all(color: Colors.teal, width: 2)
                ),
                height: 300,
                width: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/item.jpg',
                        height: 200,
                        fit: BoxFit.cover,
                        width: 170,
                      ),
                    ),
                    Text(" $title",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),

                    Text(" $descrip",style: TextStyle(fontWeight: FontWeight.w100,fontSize:18),),
                    Text("\$25")

                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.red,
                // border: Border.all(color: Colors.teal, width: 2)
              ),
              height: 300,
              width: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/item.jpg',
                      height: 200,
                      fit: BoxFit.cover,
                      width: 170,
                    ),
                  ),
                  Text("Product Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),

                  Text("Product Detail",style: TextStyle(fontWeight: FontWeight.w100,fontSize:18),),
                  Text("\$25")

                ],
              ),
            ),

          ],
        ),
        Column(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.red,
              // border: Border.all(color: Colors.teal, width: 2)
            ),
            height: 300,
            width: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/item.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                    width: 170,
                  ),
                ),
                Text("Product Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                Text("Product Detail",style: TextStyle(fontWeight: FontWeight.w100,fontSize:18),),
                Text("\$25"),

              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.red,
              // border: Border.all(color: Colors.teal, width: 2)
            ),
            height: 300,
            width: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/item.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                    width: 170,
                  ),
                ),
                Text("Product Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                Text("Product Detail",style: TextStyle(fontWeight: FontWeight.w100,fontSize:18),),
                Text("\$25"),

              ],
            ),
          ),
        ],)
      ],
    );

  }
}
