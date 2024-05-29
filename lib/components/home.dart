import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget{
  State<Home> createState()=> HomeState();
}
class HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
    return Container(

        width:  mediaQuery.size.width*1,
        height: 550,
        decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("assets/images/homebg.jpg"),
          fit: BoxFit.cover
        )
        ),
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            runSpacing: 10,

            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Saliq Javeed Dar",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,backgroundColor: Colors.black26),),
                    Text("Fullstack Mobile Developer",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange))
                  ],
              ),
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/saliq.jpg'),
              ),

            ],
          ),
        ),
      );

  }

}