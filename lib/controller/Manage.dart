import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ManageController extends GetxController {
  static ManageController instance = Get.find();
  
  var isliked=false.obs;
  
  var selectedSize="9".obs;
   var selectedColor="1".obs;
   var iemcount=0.obs;
   var isDropped = false.obs;
  var color = 'red'.obs;

  Showsnackbar(String title,String msg,IconData icon){
    Get.snackbar(
              title,
               msg,
               icon: Icon(icon, color: Colors.white),
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: Colors.red.withOpacity(.1),
               borderRadius: 20,
               margin: EdgeInsets.all(15),
               colorText: Colors.white,
               duration: Duration(seconds: 4),
               isDismissible: true,
              // dismissDirection: SnackDismissDirection.HORIZONTAL,
               forwardAnimationCurve: Curves.easeOutBack,

               );
  }
  
  }