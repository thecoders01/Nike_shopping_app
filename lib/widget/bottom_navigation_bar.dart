
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

Widget bottom_navigation_bar(){

  return Container(
    height: 100,
    width: Get.height,
    //color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      Icon(Iconsax.home,color: Colors.black,size: 25,),
      SizedBox(width: 40,),
      Container(
        decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(blurRadius: 5,
       color: Colors.grey.shade100, 
       offset: Offset(0, 5),
       )
       ],
  ),
        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child: Icon(Iconsax.search_normal,color: Colors.white,size: 20,),
                          
                        ),
      ),
 SizedBox(width: 40,),
      
      Icon(Iconsax.heart,color: Colors.black,size: 25,),
    ],),
  ) ;
}