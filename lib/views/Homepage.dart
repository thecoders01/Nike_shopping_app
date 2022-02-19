import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_shopping_app/constant/style.dart';
import 'package:nike_shopping_app/widget/bottom_navigation_bar.dart';
import 'package:nike_shopping_app/widget/icon_widget.dart';
import 'package:nike_shopping_app/widget/items_widget.dart';
import 'package:nike_shopping_app/widget/shop_now_widget.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
           
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                
                children:  [
             const   SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              Icon_widget(icon: LineIcons.bars,press: (){},color: Colors.black,),
              
              Icon_widget(icon: Iconsax.shopping_bag,press: (){},color: Colors.black),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top: 8.0),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text,
                SizedBox(height: 7,),
                text1
              ],
            ),
              ],
            ),
          ),
          Shop_now_widget(),
          Items_titles(),
          items_list(),
          
          
          
          
          
          
            ],),),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: bottom_navigation_bar(),)
        ],
      ),
    );
  }
}