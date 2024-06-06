
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
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
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



  Widget Education(){
    final List<Widget> events=[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Text('20 March 2018',style: TextStyle(color: Colors.indigo,fontSize: 12),),
              Text('Passed 10th',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('10th grade from jkbose with 90% marks from hanfia model high school',style: TextStyle(color: Colors.grey,fontSize: 14),)
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Text('20 March 2020'),
              Text('Passed 12th'),
              Text('12th grade from this particular college with 91% percentage')
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Text('20 March 2018'),
              Text('Passed 10th'),
              Text('10th grade from this particular college with 90% percentage')
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Text('20 March 2018'),
              Text('Passed 10th'),
              Text('10th grade from this particular college with 90% percentage')
            ],
          ),
        ),
      ),
    ];
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
         Timeline.tileBuilder(
           shrinkWrap: true,
           scrollDirection: Axis.vertical,
           builder: TimelineTileBuilder.fromStyle(
             itemCount: 4,
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
}