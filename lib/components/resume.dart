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
            WorkExperience(),
            SizedBox(width: 10,),
            WorkExperience(),
          ],),
          SizedBox(height: 10,),
          Skills()

        ]

      ),
    );
  }

  Widget WorkExperience(){
    return Container(
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(6)
      ),
     child: Padding(
       padding: const EdgeInsets.all(10),
       child: Column(
         children: [
           Text("Experience",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
           SizedBox(height: 10,),
           Container(
             decoration: BoxDecoration(
               color: Colors.purpleAccent.shade100,
               borderRadius: BorderRadius.circular(11)
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [
                   Text("Meity Project MANUU",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                   SizedBox(height: 5,),
                   Row(children: [
                     Text('03/2024-PRESENT',style: TextStyle(fontWeight: FontWeight.bold),),
                   Text(' | ',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: CupertinoColors.white),),
                   Text("INTERN",style: TextStyle(fontWeight: FontWeight.bold,),)],),
                   Text("Flutter Developer")
                 ]
               ),
             ),),

           SizedBox(height: 10,),

         ],
       ),
     ),
    );
  }

  Widget Skills(){
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Wrap(
        children: [
          Column(
            children: [
              Text("Programming languages",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Dart'),
              Text('java'),
              Text('c++'),
              Text('c'),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              Text("Framworks",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Flutter'),

            ],
          )
        ],
      ),
    );
  }
}