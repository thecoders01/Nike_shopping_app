import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_shopping_app/views/Items_view_page.dart';
import 'package:nike_shopping_app/widget/icon_widget.dart';

Widget items_list(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
Items_widget(name: "Nike Waffle",subname: "One SE",img: "assets/airOrange.png",price: "159",color1:Colors.orange,color2:Colors.blue),
Items_widget(name: "Nike Max270",subname: "New EDT",img: "assets/air270.png",price: "340",color1:Colors.red,color2:Colors.purple),
Items_widget(name: "Nike Legend",subname: "Essential",img: "assets/airBlack.png",price: "130",color1:Colors.black,color2:Colors.green),
    ],
  ),);
}

class Items_widget extends StatelessWidget {
  final String name,subname,img,price;
  final Color color1,color2;
  const Items_widget({Key? key,required this.name,
  required this.price,
  required this.color1,
  required this.color2,
      required this.subname,
        required this.img,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(   height: 250,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.1),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
             
            ),
            child: Stack(children: [

              Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
  name,
  style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,letterSpacing: .5,fontSize: 14),
  ),
),
SizedBox(height:2),
Text(
  subname,
  style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.black ,fontWeight: FontWeight.bold ,letterSpacing: .5,fontSize: 14),
  ),
),

SizedBox(height:6),
                  Row(children: [
                    Container(
         
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: color2,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            
          ),
          
        ),
        SizedBox(width:6),
Container(
         
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            
          ),
          
        ),
                  ],)
                ],),
              ),
              ),
              Align(alignment: Alignment.center,
              child:  Hero(
                              tag:name,
                child: Image.asset(img,width: 150,height: 150,)),
              ),
              Align(alignment: Alignment.bottomCenter,
              
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,right: 18.0,bottom: 8.0),
                child: Container(
                  height: 60,
                 // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
Row(
  
  children: [
  Text(
  "€",
  style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.black ,fontWeight: FontWeight.bold ,letterSpacing: .5,fontSize: 15),
  ),
),
SizedBox(width: 1,),
Text(
  price,
  style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.black ,fontWeight: FontWeight.bold ,letterSpacing: .5,fontSize: 25),
  ),
),
],),
Text(
  "Price",
  style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.black ,letterSpacing: .5,fontSize: 12),
  ),
),

                    ],),
                    Icon_widget(icon: Iconsax.arrow_right_1,press: (){

            print("go to ");
                      Get.to(Items_view_page(name:name,subname:subname,img:img,price:price,color1:color1,color2:color2));
                    },
                    color: Colors.black,
                    ),
                  ],),
                ),
              ),
              ),
            ],),
            
            
            ),
    );
  }
}



Widget Items_titles(){
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Text(
    'Lifestyle',
    style: GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,letterSpacing: .5,fontSize: 25),
    ),
),
SizedBox(height: 4,),
Text(
    '35 items',
    style: GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.red, letterSpacing: .5,fontSize: 16),
    ),
)
],),
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Text(
    'Running',
    style: GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,letterSpacing: .5,fontSize: 25),
    ),
),
SizedBox(height: 4,),
Text(
    '41 items',
    style: GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.grey, letterSpacing: .5,fontSize: 16),
    ),
)
],),
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Text(
    'Tennis',
    style: GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,letterSpacing: .5,fontSize: 25),
    ),
),
SizedBox(height: 4,),
Text(
    '18 items',
    style: GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.grey, letterSpacing: .5,fontSize: 16),
    ),
)
],)

    ],),
  );
}