import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nike_shopping_app/controller/controler.dart';
import 'package:nike_shopping_app/widget/color_widget.dart';
import 'package:nike_shopping_app/widget/icon_widget.dart';
import 'package:nike_shopping_app/widget/size_widget.dart';
import 'package:nike_shopping_app/widget/swipe_down_widget.dart';

class Drag_and_drop_widget extends StatelessWidget {
  final String name,price,img;
  final Color color1,color2;
  const Drag_and_drop_widget({Key? key,
  required this.name,
  required this.color1,
  required this.color2,
        required this.img,
      required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Column(children: [
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.white,
          child: Stack(children: [
            drag_widget(img,name),
            /*
Align(
              alignment: Alignment.center,
              child:drag_widget(img,name)
            ),
            */
            Align(
              alignment: Alignment.topLeft,
              child: size_column(),
            ),
            
             Align(
              alignment: Alignment.topRight,
              child: fav_button(),
            ),
            
             Align(
              alignment: Alignment.bottomRight,
              child: color_column(color1,color2),
            ),
              Align(
              alignment: Alignment.bottomCenter,
              child: Text('Swipe down',style: TextStyle(fontSize: 14,color: Colors.black),),
         
            ),
             /*
Align(
              alignment: Alignment.center,
              child:Image.asset( img,height: 400,width: 400,)
            ),
             */
            
            Align(
              alignment: Alignment.bottomRight,
              child:  Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
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
              ),
            )
          
          ],),
        ),
      ),
       Expanded(
        
        child: drag_target(),
      ),
    ],);
  }
}
Widget drag_widget(String img,String name){
  return  Draggable<String>(
              // Data is the value this Draggable stores.
              data: 'red',
              child: Hero(
                              tag:name,
                
                child: Image.asset( img,height: 400,width: 400,)),
              feedback: Image.asset(img ,height: 120,width: 120,),
              childWhenDragging: Container(
               
              ),
              onDragStarted: () {
                print("drag start");
              // manageController.Showsnackbar("Drag started","You're dragging something",Iconsax.timer_start);
              },
            );
}

Widget drag_target(){
  return DragTarget<String>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Obx(()=>Container(
         
           decoration:  BoxDecoration(
                       color: Colors.white,
                   
                     image: DecorationImage(
                       scale: 2,
                      // alignment: Alignment.bottomCenter,
              image: AssetImage(manageController.isDropped.value? 'assets/Aire270Inbox.png' : 'assets/box.png'),
              fit: BoxFit.cover,
            ),
                    ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Swipe_down(),
                ),
              ),
            
              
            ],
          ),
        ));
              },
              onWillAccept: (data) {
                return data == 'red';
              },
              onAccept: (data) {
                
               manageController.isDropped.value = true;
               manageController.iemcount.value++;
              },
              onLeave: (data) {
               // manageController.Showsnackbar("Missed","You messed it up try again !",Iconsax.warning_2);
               print("miss");
              },
            );
}
/*

 Align(
                alignment: Alignment.center,
                child: Image.asset(manageController.isDropped.value
                        ? 'assets/Aire270Inbox.png'
                         : 'assets/box.png',height: 650,width: 650,)
              ),
*/