import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget{
  State<Services> createState()=> ServicesState();
}

class ServicesState extends State<Services>{
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
   return Container(
     width: mediaQuery.size.width*1 ,
     child: Padding(
       padding: const EdgeInsets.only(left: 40,right: 40,top: 50,bottom: 100),
       child: Column(
         children: [
           Text('What I can do?',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text('Since the beginning of my journey as a freelance designer and developer, I have worked in startups and collaborated with talented people to create digital products for both business and consumer use. I offer a wide range of services, Including brand design, programming and teaching.'),
           ),
           Wrap(
             children: [
               myContainer(),
               myContainer(),
               myContainer(),
               myContainer(),
             ],
           ),
         ],
       ),
     ) ,
   );
  }
 Padding myContainer( ){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 235,
        // height: 200,
        child: Padding(
          padding: const EdgeInsets.only(top: 12,bottom: 12,left: 12,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Icon(Icons.android_outlined,color: Colors.green,size: 50,),
              SizedBox(height: 10,),
              Text('Android App Development',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Center(child: Text("Are you interested in the great Mobile app? let's make it a reality " ,style: TextStyle(color: Colors.white,fontSize: 12,),)),
            ]),
              SizedBox(height: 20,),
                  Text("⚒ Flutter" ,style: TextStyle(color: Colors.white),),
                  Text("⚒ Android(Kotlin or Java)" ,style: TextStyle(color: Colors.white),),

            ],
          ),
        ),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
          color:Colors.black45
        ),
      ),
    );
 }


}