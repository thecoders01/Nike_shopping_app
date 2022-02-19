import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nike_shopping_app/controller/controler.dart';

Widget fav_button(){
  return SizedBox(
    height: 90,
    child: Column(children: [
      Text('Size',style: TextStyle(fontSize: 14,color: Colors.black),),
      Obx(()=>Icon_widget(icon:manageController.isliked.value? Iconsax.heart5:Iconsax.heart,
      press: (){
        if(manageController.isliked.value==true){
manageController.isliked.value=false;
        }else{
manageController.isliked.value=true;
        }
        
      
      },
      color:manageController.isliked.value?Colors.red:Colors.black
      )),
    ],),
  );
}

// ignore: camel_case_types
class Icon_widget extends StatelessWidget {
  const Icon_widget(
      {Key? key,
      required this.icon,
      required this.color,
      required this.press})
      : super(key: key);
  final IconData icon;
  final Color color;

  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:   BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
  onPressed: () {
     press();
    print("onPressed");
  },
        
        child: Container(
         
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.grey,width: 1.5),
          ),
          child: Center(
            child: Icon(icon,color: color,size: 20,)
          ),
        ),
      ),
    );
  }
}