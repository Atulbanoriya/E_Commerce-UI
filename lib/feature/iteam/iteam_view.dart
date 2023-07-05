import 'package:e_commerce/core/route.dart';
import 'package:e_commerce/feature/iteam/iteam_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class IteamView extends GetView<IteamController>{
  const IteamView({super.key});

  @override
  Widget build(BuildContext context) {
   return GridView.count(
     childAspectRatio: 0.58,
     crossAxisCount: 2,
     physics: const NeverScrollableScrollPhysics(),
     shrinkWrap: true,
     children:  [
       for( int i = 1 ; i < 11; i++)
       Container(
           height: double.infinity,
           padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
           margin:const EdgeInsets.symmetric(vertical: 8 , horizontal: 10),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(20),
         ),
         child: Column(
           children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   padding: const EdgeInsets.all(5),
                   decoration:BoxDecoration(
                     color: const Color(0xFF4C53A5),
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: const Text(
                     "-50%",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                     color: Colors.white
                    ),
                   ),
                 ),
                 const Icon(Icons.favorite_border_outlined,color: Colors.redAccent,)
               ],
             ),
             InkWell(
               onTap:(){
                 Get.toNamed(Routes.product);
               },
               child: Container(
                 margin: const EdgeInsets.all(10),
                 child: Image.asset('image/$i.png', height: 123,width: 120,),
               ),
             ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: const Text(
                    "Product Details",
                  style: TextStyle(
                    fontSize: 18,
                    color:  Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Container(
                 alignment: Alignment.centerLeft,
                 child: const Text(
                   "Look classy and stylish when you don this T-Shirt from NoLogo",
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color:  Color(0xFF4C53A5),
                  ),
                 ),
               ),
               Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("\$55",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:  Color(0xFF4C53A5),
                      ),
                    ),
                    IconButton(
                      icon:const Icon(
                        Icons.shopping_cart_checkout,
                        color:  Color(0xFF4C53A5),
                        ),
                      onPressed: () {  },
                    )
                  ],
                ),
             )
           ],
         ),
       ),
     ],
   );
  }
}