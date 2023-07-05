import 'package:e_commerce/core/route.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DrawerView extends GetView{
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF4C53A5),
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF4C53A5)),
              accountName: Text(
                "Atul Rajak",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("techieatul01@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          //DrawerHeader
          ListTile(
            leading: const Icon(
                Icons.person,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(
                Icons.file_upload_outlined,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
              'My Order',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.filter_9_plus,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
                'E Commerce Plus Zone',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(
                Icons.favorite,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
                'Wishlist',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(
                Icons.headset_mic_outlined,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
              '24*7 Customer Care',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),


          ListTile(
            leading: const Icon(
                Icons.edit,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
                'Edit Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(
                Icons.account_balance_wallet,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
              'Gift Card',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(
                Icons.logout,
                color: Color(0xFF4C53A5)
            ),
            title: const Text(
              'LogOut',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              GoogleSignIn().signOut();
              Get.toNamed(Routes.login);
            },
          ),
        ],
      ),
    );
  }
}