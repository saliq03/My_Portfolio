import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resume extends StatelessWidget{
  const Resume({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
    return Container(
        width:  mediaQuery.size.width*1,
        decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage("assets/images/aboutbg.jpg"),
    fit: BoxFit.cover
    )),

      child: Column(
        children:[
          Text("Resume",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.bold,fontSize: 40),),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WorkExperience()
          ],),

        ]

      ),
    );
  }

  Widget WorkExperience(){
    return Container(
      color: CupertinoColors.white,
     child: Padding(
       padding: const EdgeInsets.all(10),
       child: Column(
         children: [
           Text("Experience",style: TextStyle(fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
           Container(
             color: Colors.purpleAccent.shade100,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [
                   Text("Meity Project MANUU",style: TextStyle(fontWeight: FontWeight.bold),),
                   Row(children: [
                     Text('March 2024-current'),
                   Text(' | ',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: CupertinoColors.white),),
                   Text("Intern")],),
                   Text("Flutter Developer")
                 ]
               ),
             ),),

           SizedBox(height: 10,),
           Container(
             color: Colors.purpleAccent.shade100,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                   children: [
                     Text("Meity Project MANUU",style: TextStyle(fontWeight: FontWeight.bold),),
                     Row(children: [
                       Text('March 2024-current'),
                       Text(' | ',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: CupertinoColors.white),),
                       Text("Intern")],),
                     Text("Flutter Developer")
                   ]
               ),
             ),),
         ],
       ),
     ),
    );
  }
}