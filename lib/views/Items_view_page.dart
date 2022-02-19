import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_shopping_app/constant/style.dart';
import 'package:nike_shopping_app/controller/controler.dart';
import 'package:nike_shopping_app/widget/drag_and_drop_widget.dart';
import 'package:nike_shopping_app/widget/icon_widget.dart';

class Items_view_page extends StatefulWidget {
  
  final String name,subname,price,img;
 //final int selectedNumber;
 final Color color1,color2;
 Items_view_page({Key? key,required this.name,
      required this.subname,
        required this.img,
        required this.color1,
        required this.color2,
       //  required this.selectedNumber,
      required this.price}) : super(key: key);
  

  @override
  State<Items_view_page> createState() => _Items_view_pageState(name: name,subname:subname,img:img,price:price,color1:color1,color2:color2);
}

class _Items_view_pageState extends State<Items_view_page> {
   final String name,subname,price,img;
 //final int selectedNumber;
 final Color color1,color2;
  _Items_view_pageState(
      {required this.name,
      required this.subname,
        required this.img,
        required this.color1,
        required this.color2,
       //  required this.selectedNumber,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(children: [
                const  SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              Icon_widget(icon: Iconsax.arrow_left,press: (){

                Get.back();
              },color: Colors.black),
             Obx(()=> Badge(
                position: BadgePosition.topStart(top: 0, start: 3),
                badgeColor: Colors.black,
                animationDuration : const Duration(milliseconds: 0),
      badgeContent: Text('${manageController.iemcount.value}',style: const TextStyle(color: Colors.white),),
      padding : const EdgeInsets.all(5.0),
      child: Icon_widget(icon: Iconsax.shopping_bag,press: (){
 manageController.isDropped.value =false;

              },color: Colors.black),
    ))
              
            ],),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Column(children: [
text6,
                SizedBox(height: 7,),
                text7
            ],)
          ],)
              ],),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
             // color: Colors.green,
              child: Drag_and_drop_widget(name: name,price: price,img: img,color1:color1,color2:color2),
            ),
          ),
        ],
      ),
    );
  }
}