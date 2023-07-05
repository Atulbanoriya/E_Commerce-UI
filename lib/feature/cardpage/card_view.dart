import 'package:e_commerce/feature/cardpage/card_controller.dart';
import 'package:e_commerce/feature/cartnavbar/cartnav_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../cardsample/cardsample_view.dart';

class CardView extends GetView<CardController>{
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(
          color:  Color(0xFF4C53A5),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Cart",
          style:  TextStyle(
            color:  Color(0xFF4C53A5),
            fontWeight: FontWeight.bold,
          ),
         ),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(
                Icons.more_vert,
                color:  Color(0xFF4C53A5),
              ),
          ),
        ],
      ),

      body: ListView(
       children: [
         Container(
           padding: const EdgeInsets.only(top: 15),
           decoration: const BoxDecoration(
             borderRadius: BorderRadius.only(
               topRight: Radius.circular(25),
               topLeft: Radius.circular(25),
             ),
             color: Colors.white
           ),
           child:   Column(
             children: [
               const CardSampleVew(),

               Container(
                 margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                 padding: const EdgeInsets.all(10),
                 child: Row(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         color: const Color(0xFF4C53A5),
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: const Icon(
                         Icons.add,
                         color: Colors.white,
                       ),
                     ),
                     const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Text(
                         "Add Coupon Code",
                         style: TextStyle(
                           color: Color(0xFF4C53A5),
                           fontWeight: FontWeight.bold,
                        ),
                       ),
                     ),
                   ],
                 ),
               )
             ],
           ),
         )
       ],
      ),
      bottomNavigationBar: const CartNavView(),
    );
  }
}
