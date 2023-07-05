import 'package:e_commerce/core/route.dart';
import 'package:e_commerce/feature/product/product_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProdNavView extends GetView<ProductController>{
  const ProdNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0,3),
            ),
          ]
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "\$120",
              style: TextStyle(
                color: Color(0xFF4C53A5),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            ElevatedButton.icon(
              onPressed: (){
                Get.toNamed(Routes.card);
              },
              label: const Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
               icon: const Icon(CupertinoIcons.cart_fill_badge_plus),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all( const Color(0xFF4C53A5)),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}