import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_shopping_app/controller/controler.dart';


Widget color_column(Color color1,Color color2){
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    
    children: [
    Color_widget(color: color1,id: "1",),
    Color_widget(color: color2,id: "2",),
    Text('Color',style: TextStyle(fontSize: 14,color: Colors.black),),
    
    
  ],);
}
// ignore: camel_case_types
class Color_widget extends StatelessWidget {
  const Color_widget(
      {Key? key,
      required this.color,
      required this.id})
      : super(key: key);
  final Color color;
  final String id;

 
  @override
  Widget build(BuildContext context) {
    return Obx(() =>Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
     
          manageController.selectedColor.value=id;
        },
        child: Container(
         
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: (manageController.selectedColor.value == id)? Colors.black:Colors.grey,width: 1.5),
          ),
          child: Center(
            child: Container(
         
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            
          ),
          
        ),
          ),
        ),
      ),
    ));
  }
}