
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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


  //                     ---->    WORK   <-----
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


//                    ----->   SKILLS    <------
  Widget Skills(){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tech Skills Skills',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),),
            Divider(),
            SizedBox(height: 20,),
            Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  SkillChip("Dart"),
                  SkillChip("Java"),
                  SkillChip("C++"),
                  SkillChip("C"),
                  SkillChip("Flutter"),
                  SkillChip("Git"),
                  SkillChip("Git Hub"),
                  SkillChip("Figma"),
                  SkillChip("My SQL"),
                  SkillChip("SQLite"),
                  SkillChip("Firebase"),
                  SkillChip("Ubanto OS"),
                  SkillChip("Vs Code"),
                  SkillChip("Android Studio"),
                   ],
                  ),

              ],
            ),
      ),
    );
  }

  Widget SkillProgrammingLanguages(){
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(11),
        color: Colors.white
      ),
      width: 300,
      child:  Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
        child: Column(
          children: [
            Text("Programming languages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Divider(),
            Wrap(
              children: [
                SkillChip("Dart"),
                SkillChip("Java"),
                SkillChip("C++"),
                SkillChip("C"),
              ],
            )

          ],
        ),
      ),
    );
  }

  Widget SkillChip(String data){
    return Padding(
      padding: const EdgeInsets.only(top: 3,bottom: 3,left:3,right: 3),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Text(data,style: TextStyle(color: Colors.indigo),),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border:  Border.all(color: Colors.indigo,width: 1)
        ),
      ),
    );
  }



//                ------>       EDUCATION   <------
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