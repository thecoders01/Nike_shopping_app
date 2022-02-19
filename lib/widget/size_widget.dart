import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_shopping_app/controller/controler.dart';


Widget size_column(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Size',style: TextStyle(fontSize: 14,color: Colors.black),),
    Size_widget(nbr:"9",press: (){},),
    Size_widget(nbr:"9.5",press: (){},),
    Size_widget(nbr:"10",press: (){},),
    Size_widget(nbr:"10.5",press: (){},),
  ],);
}
// ignore: camel_case_types
class Size_widget extends StatelessWidget {
  const Size_widget(
      {Key? key,
      required this.nbr,
      required this.press})
      : super(key: key);
  final String nbr;

  final Function press;
  @override
  Widget build(BuildContext context) {
    return Obx(() =>Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          press();
          manageController.selectedSize.value=nbr;
        },
        child: Container(
         
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color:(manageController.selectedSize.value == nbr)? Colors.black:Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: (manageController.selectedSize.value == nbr)? Colors.black:Colors.grey,width: 1.5),
          ),
          child: Center(
            child: Text(nbr,style: TextStyle(fontSize: 14,color: (manageController.selectedSize.value == nbr)? Colors.white:Colors.black),)
          ),
        ),
      ),
    ));
  }
}