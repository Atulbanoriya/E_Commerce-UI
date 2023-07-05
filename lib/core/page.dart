import 'package:e_commerce/core/route.dart';
import 'package:e_commerce/feature/cardpage/card_binding.dart';
import 'package:e_commerce/feature/cardpage/card_view.dart';
import 'package:e_commerce/feature/categories/categories_binding.dart';
import 'package:e_commerce/feature/categories/categories_view.dart';
import 'package:e_commerce/feature/home/home_binding.dart';
import 'package:e_commerce/feature/home/home_view.dart';
import 'package:e_commerce/feature/product/product_binding.dart';
import 'package:e_commerce/feature/product/product_view.dart';
import 'package:e_commerce/feature/splash/splash_binding.dart';
import 'package:e_commerce/feature/splash/splash_view.dart';
import 'package:get/get.dart';

List<GetPage> allpages =[

  GetPage(
    name: Routes.splash,
    page: ()=> const SplashView(),
    binding: SplashBinding(),
  ),


  GetPage(
      name: Routes.home,
      page: ()=> const HomeView(),
      binding: HomeBinding()
  ),

  GetPage(
      name: Routes.categories,
      page: ()=> const CategoriesView(),
      binding: CategoriesBinding()
  ),

  GetPage(
      name: Routes.card,
      page: ()=> const CardView(),
      binding: CardBinding()
  ),

  GetPage(
      name: Routes.product,
      page: ()=> const ProductView(),
      binding: ProductBinding(),
  ),

];