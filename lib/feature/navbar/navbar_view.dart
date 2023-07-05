import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/feature/navbar/navbar_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarView extends GetView<NavbarController>{
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 50,
        backgroundColor:Colors.transparent  ,
         color:  const Color(0xFF4C53A5),
        onTap: (index) {   },
        items:  const [
           Icon(Icons.home, size: 30, color: Colors.white),
           Icon(Icons.category, size: 30, color: Colors.white),
          Icon( Icons.notifications_rounded, size: 30, color: Colors.white),
          Icon( Icons.account_circle_outlined, size: 30, color: Colors.white),
          Icon( CupertinoIcons.cart_fill, size: 30, color: Colors.white),
         ]
    );
  }

}