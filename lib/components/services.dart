import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Services extends StatefulWidget{
  State<Services> createState()=> ServicesState();
}

class ServicesState extends State<Services>{
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
   return Container(
     width: mediaQuery.size.width*1 ,
     decoration: BoxDecoration(
         image: DecorationImage(
             image:AssetImage("assets/images/aboutbg.jpg"),
             fit: BoxFit.cover
         )),

     child: Padding(
       padding: const EdgeInsets.only(left: 40,right: 40,top: 50,bottom: 100),
       child: Column(
         children: [
           Text('What I can do?',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text('Since the beginning of my journey as a freelance designer and developer, I have worked in startups and collaborated with talented people to create digital products for both business and consumer use. I offer a wide range of services, Including brand design, programming and teaching.',style: TextStyle(color: Colors.white),),
           ),
           Wrap(
             children: [
               myContainer(Image.asset('assets/icons/androidlogo.png',height: 70,color: Colors.green.shade500,),
                   'Android App Development',
                   "Are you interested in the great Mobile app? let's make it a reality. ",
                   [Text("⚒ Flutter" ,style: TextStyle(color: Colors.white),),
                     Text("⚒ Android(Kotlin or Java)" ,style: TextStyle(color: Colors.white),)]
               ),

               myContainer(Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: FaIcon(FontAwesomeIcons.apple,color: Colors.white,size: 50,),
               ),
               'iOS App Development',
                   "Are you interested in the great Mobile app? let's make it a reality. ",
               [Text("⚒ Flutter" ,style: TextStyle(color: Colors.white),),
                 ]),

               myContainer(Image.asset('assets/icons/uxicon.png',height: 50,),
                   'UI/UX Designing',
                   "I'm creating elegant designs suited to your needs following core design theory.",
                   [Text("⚒ Adobe XD" ,style: TextStyle(color: Colors.white),),
                     Text("⚒ Figma" ,style: TextStyle(color: Colors.white),),
                     Text("⚒ Photoshop" ,style: TextStyle(color: Colors.white),)]
               ),

               myContainer(Padding(
                 padding: const EdgeInsets.all(10),
                 child: FaIcon(FontAwesomeIcons.screwdriverWrench,color:Color(0xFFC0C0C0),size: 40,),
               ),
                   'Bug Fixing',
                   "I can fix your Mobile app bugs/errors and refactor your code to meet the best practices and have a clean architecture. ",
                   []
               ),
             ],
           ),
         ],
       ),
     ) ,
   );
  }
 Padding myContainer( Widget icon,String heading,String body,List<Widget> tools){
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
              icon,
              SizedBox(height: 10,),
              Text(heading,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Center(child: Text(body ,style: TextStyle(color: Colors.white,fontSize: 12,),)),
            ]),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: tools,
              )

            ],
          ),
        ),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
          color:Colors.black54
        ),
      ),
    );
 }


}