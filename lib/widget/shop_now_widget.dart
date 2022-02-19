import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:nike_shopping_app/constant/style.dart';

class Shop_now_widget extends StatefulWidget {
  Shop_now_widget({Key? key}) : super(key: key);

  @override
  State<Shop_now_widget> createState() => _Shop_now_widgetState();
}

class _Shop_now_widgetState extends State<Shop_now_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      height: 270,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
       
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(left:178.0,bottom: 30),
              child: Container(
               // color: Colors.green,
                height: 490,
                width: 490,
                
                child: Image.asset("assets/air270.png",width: 490,height: 490,)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(.1),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
           
          ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text4,
                            SizedBox(height: 6,),
                            text5
                          ],
                        ),
                        shop_now_button()
                      ],
                    ),
                  ],
                ),
              ),),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.red,
                        
                      ),
                      SizedBox(width: 10,),
                       CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.grey.shade400,
                        
                      ),
                       const SizedBox(width: 10,),
                        CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.grey.shade400,
                        
                      ),
                      ],),
                  ),
          )
        ],
      ),
    );
  }
  Widget shop_now_button(){
    return  BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
      onPressed: () {
       
      },
      child: Container(
        height: 50,
        width: 130,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
           
           /*
 boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(0, 10),
                          ),
                        ],
           */
            
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text3,
          ],
        ),
      ),
    );
  }
}