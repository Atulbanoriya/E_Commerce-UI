import 'package:e_commerce/core/widget/drawer.dart';
import 'package:e_commerce/feature/categories/categories_view.dart';
import 'package:e_commerce/feature/home/home_controller.dart';
import 'package:e_commerce/feature/iteam/iteam_view.dart';
import 'package:e_commerce/feature/navbar/navbar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/route.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
       appBar: AppBar(
         elevation: 1,
         backgroundColor: const Color(0xFF4C53A5),
          title: const Padding(
           padding: EdgeInsets.only(left: 10),
           child: Text(
             "E Commerce",
             style: TextStyle(
               fontSize: 23,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             ),
           ),
         ),

         actions: [
           Padding(
             padding:   const EdgeInsets.all(7),
             child: Badge(
               label: const Text('3',
               style: TextStyle(
                   fontSize: 12,
                   color: Colors.white
               ),
             ),

             child: InkWell(
               onTap: (){
                 // Get.toNamed(Routes.card);
               },
               child: const Icon(Icons.notifications,
                 size: 30,
                 color: Colors.white, ),
             ),
           ),
           )
         ],
    ),

     drawer:  const DrawerView(),

    body: ListView(
        children:  [
           Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(35) ,
                topRight:Radius.circular(35) ,
              )
            ),

            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 200,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Here....",
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.search,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20 ,
                    horizontal: 20,
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                const CategoriesView(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal:15 ,),
                  child: const Text("Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                   ),
                  ),
                ),

                const IteamView(),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavbarView(),
    );
  }
}