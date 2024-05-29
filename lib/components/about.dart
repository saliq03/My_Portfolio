import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget{
  State<About> createState()=>AboutState();
}
class AboutState extends State<About>{
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
    return Container(
        width:  mediaQuery.size.width*1,
        height: 550,
      color: Colors.black45,
      child: Center(
        child: Text("ABOUT",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
      ),
    );
  }

}