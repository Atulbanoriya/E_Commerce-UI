import 'package:e_commerce/feature/cardsample/cardsample_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CardSampleVew extends GetView<CardSampleController>{
  const CardSampleVew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 1; i < 5; i++)
        Container(
          height: 110,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 6 ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                  value: "",
                  groupValue: "",
                  activeColor:  const Color(0xFF4C53A5),
                onChanged: (index) {  },
              ),
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(right: 15),
                child: Image.asset("image/$i.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Details",
                      style: TextStyle(
                      color:  Color(0xFF4C53A5),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("\$55",
                      style: TextStyle(
                        color:  Color(0xFF4C53A5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

               Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(2),
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ]
                          ),
                          child: const Icon(
                            CupertinoIcons.minus,
                            size: 18,
                          ),
                        ),

                          const SizedBox(width: 5,),

                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text(
                            "01",
                            style: TextStyle(
                              color:  Color(0xFF4C53A5),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(width: 5,),

                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration:  BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                )
                              ]
                          ),
                          child: const Icon(
                            CupertinoIcons.plus,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}