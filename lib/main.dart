import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/page.dart';
import 'core/route.dart';


late Size mq;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: allpages,
    );
  }
}



