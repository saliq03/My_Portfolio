
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

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
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            WorkExperience(),
            SizedBox(width: 10,),
           Education()
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Skills',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
          SizedBox(height: 20,),
          Wrap(
            children: [
              Column(
                children: [
                  Text("Programming languages",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Chip(label: Text("Dart"),
                       labelStyle: TextStyle(color: Colors.indigo),
                       labelPadding: EdgeInsets.only(left: 3,right: 3,top: -3,bottom: -3),
                       side: BorderSide(color: Colors.indigo),
                       backgroundColor:Colors.white,),

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
        ],
      ),
    );
  }



  Widget Education(){
    final List<Widget> events=[
      EducationBoxes('August 2021 - April 2025', 'Maulana Azad National Urdu University','Hyderabad,Telangana', 'B.tech- CS and IT', 'CGPA: 8.97 out of 10'),
      EducationBoxes('December 2020','Govt.Higher Secondary School','Nehalpora Pattan, J&K','12th-PCM , JKBOSE','Percentage: 91%'),
      EducationBoxes('December 2018','Hanfia Model High School','Warpora Pattan, J&K','10th, JKBOSE','Percentage: 92%'),];

    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(11)
      ),
    width: 800,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text('Education',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
         SizedBox(height: 10,),
         Timeline.tileBuilder(
           shrinkWrap: true,
           scrollDirection: Axis.vertical,
           builder: TimelineTileBuilder.fromStyle(
             itemCount: events.length,
             contentsAlign: ContentsAlign.alternating,
             contentsBuilder: (context,index){
               return Card(
                 child: events[index],
               );
             }
           )
         )
        ],
      ),
    ),
    );
  }

  Widget EducationBoxes(String date,String College,String location,String degree,String percentage){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Column(
          children: [
            Text(date,style: TextStyle(color: Colors.indigo,fontSize: 12),),
            SizedBox(height: 5,),
            Text(College,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text(location,style: TextStyle(color: Colors.grey.shade600,fontSize: 14)),
            Text(degree,style: TextStyle(color: Colors.grey.shade600,fontSize: 14),),
            Text(percentage,style: TextStyle(color: Colors.grey.shade600,fontSize: 14),)
          ],
        ),
      ),
    );
  }
}