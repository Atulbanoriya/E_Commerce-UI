import 'package:e_commerce/feature/categories/categories_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CategoriesView extends GetView<CategoriesController>{
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for( int i = 1 ; i < 11; i++)
          Container(
           margin: const EdgeInsets.symmetric(vertical: 5),
           padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(20) ,
           ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'image/$i.png',
                  height:30,
                  width: 30,
                ),
                const Text(
                  't-shirt',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                      color: Color(0xFF4C53A5),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}