import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_shopping_app/controller/controler.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

Widget Swipe_down(){
  return GestureDetector(
    onVerticalDragUpdate: (details) {
        int sensitivity = 8;
        if (details.delta.dy > sensitivity) {
            print("swiping down");
            // Down Swipe
        } else if(details.delta.dy < -sensitivity){
            // Up Swipe
            print("swiping up");
        }
    },
    child: Container(
      
      height:90,
      width: 60,
      decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
             
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
  onPressed: () {
    print("onPressed");
    manageController.iemcount.value++;
  },
                    child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.grey.withOpacity(.1),
                            child: Center(child: Icon(Iconsax.add,color: Colors.white,size: 16,),),
                            
                          ),
                  ),
                       Text("${manageController.iemcount.value}",style: TextStyle(fontSize: 15,color: Colors.white),)
                                 ],
              ),
            ),
    ),
  );
}
