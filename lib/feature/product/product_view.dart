import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:e_commerce/feature/product/product_controller.dart';
import 'package:e_commerce/feature/productnav/prodnav_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProductView extends GetView<ProductController>{
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(
          color:  Color(0xFF4C53A5),
        ),
        title: const Text(
          "Product",
        style: TextStyle(
          color: Color(0xFF4C53A5),
          fontWeight: FontWeight.bold,
         ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.favorite, color: Colors.red,))
        ],
      ),

    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset('image/2.png',height: 300,),
        ),
        Arc(
          edge: Edge.TOP,
          arcType: ArcType.CONVEY,
          height: 30,
           child: Container(
             width: double.infinity,
             color: Colors.white,
             child:  Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 children: [
                   const Padding(padding: EdgeInsets.only(
                     top:40 ,
                     bottom: 15,
                    ),
                     child: Row(
                       children: [
                         Text(
                             "Product Title",
                           style: TextStyle(
                             fontSize: 28,
                             color: Color(0xFF4C53A5),
                             fontWeight: FontWeight.bold
                           ),
                         )
                       ],
                     ),
                   ),
                    
                   Padding(
                       padding: const EdgeInsets.only(
                     top: 5,
                     bottom:10,
                    ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            ),
                              onRatingUpdate: (index) {
                            },
                          ),

                         Row(
                           children: [
                             Container(
                               padding: const EdgeInsets.all(5),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow:  [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     spreadRadius: 3,
                                     blurRadius: 10,
                                     offset: const Offset(0,3),
                                   ),
                                 ]
                               ),
                               child: const Icon(
                                 CupertinoIcons.minus,
                                 color: Color(0xFF4C53A5),
                               ),
                             ),

                             Container(
                               margin: const EdgeInsets.symmetric(horizontal: 10),
                               child: const Text(
                                 "01",
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFF4C53A5),
                                 ),
                               ),
                             ),

                             Container(
                               padding: const EdgeInsets.all(5),
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20),
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.grey.withOpacity(0.5),
                                       spreadRadius: 3,
                                       blurRadius: 10,
                                       offset: const Offset(0,3),
                                     ),
                                   ]
                               ),
                               child: const Icon(
                                 CupertinoIcons.plus,
                                 color: Color(0xFF4C53A5),
                               ),
                             ),
                           ],
                         )
                       ],
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.symmetric(vertical: 10),
                     child: Text("A T-shirt (also spelled tee-shirt or tee shirt), or tee for short, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck, which lacks a collar.",
                       textAlign: TextAlign.justify,
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Color(0xFF4C53A5),
                       ),
                     ),
                   ),
                   
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8),
                     child: Row(
                       children: [
                         const Text(
                           "Size's",
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                             color: Color(0xFF4C53A5),
                           ),
                         ),

                         const SizedBox(width: 10,),

                         Row(
                           children: [

                             for( int i = 6 ; i < 11 ; i++)

                             Container(
                               height: 30,
                               width: 30,
                               alignment: Alignment.center,
                               margin: const EdgeInsets.symmetric(horizontal: 5),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     spreadRadius: 2,
                                     blurRadius: 8,
                                   ),
                                 ]
                               ),
                               child:  Text(
                                i.toString(),
                                 style: const TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFF4C53A5),
                                 ),
                               ),
                             )
                           ],
                         )
                       ],
                     ),
                   ),

                   const SizedBox(
                     height: 5,
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                       children: [
                         const Text(
                           "Color",
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                             color: Color(0xFF4C53A5),
                           ),
                         ),

                         const SizedBox(width: 10,),

                         Row(
                           children: [

                             for( int i = 0 ; i < 5 ; i++)

                               Container(
                                 height: 30,
                                 width: 30,
                                 alignment: Alignment.center,
                                 margin: const EdgeInsets.symmetric(horizontal: 5),
                                 decoration: BoxDecoration(
                                     color: controller.clrs[i],
                                     borderRadius: BorderRadius.circular(30),
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.5),
                                         spreadRadius: 2,
                                         blurRadius: 8,
                                       ),
                                     ]
                                 ),
                               ),
                           ],
                         )
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ),
        ),
      ],
    ),
      bottomNavigationBar: const ProdNavView(),
   );
  }
}