import 'package:e_commerce/feature/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController>{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            color: const Color(0xFF4C53A5),
            child:  Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Image.asset(
                      "image/ecomm.gif"
                  ),
                ),

                const Positioned(
                    bottom: 35,
                    child: Text(
                        'MADE BY ATUL',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 4,
                          fontSize: 16,
                        ),
                    ),
                ),
              ],
            )
        )
    );
  }

}
