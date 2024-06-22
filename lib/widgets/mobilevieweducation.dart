import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/resume.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Mobilevieweducation extends StatelessWidget {
  const Mobilevieweducation({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> events=[
      // Resume().EducationBoxes(date, College, location, degree, percentage)
      Resume().EducationBoxes('August 2021 - April 2025', 'Maulana Azad National Urdu University','Hyderabad,Telangana', 'B.tech- CS and IT', 'CGPA: 8.97 out of 10'),
      Resume().EducationBoxes('December 2020','Govt.Higher Secondary School','Nehalpora Pattan, J&K','12th-PCM , JKBOSE','Percentage: 91%'),
      Resume().EducationBoxes('December 2018','Hanfia Model High School','Warpora Pattan, J&K','10th, JKBOSE','Percentage: 92%'),];
     return Container(
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(11)
      ),
      width: 450,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Education',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
            SizedBox(height: 15,),
            Expanded(
              child: ListView(
                children: [
                  Mytimelinetile(events[0], true,false),
                  Mytimelinetile(events[1], false,false),
                  Mytimelinetile(events[2], false,true),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget Mytimelinetile(Widget eventcard,bool isfirst,bool islast){
    return TimelineTile(
      isFirst: isfirst,
      isLast: islast,
      indicatorStyle: IndicatorStyle(color: Colors.purpleAccent,width: 20),
      beforeLineStyle: LineStyle(color: Colors.purpleAccent,thickness: 1),
      endChild: Padding(
        padding: const EdgeInsets.only(bottom: 10,left: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.circular(6)
          ),

          child: eventcard,
        ),
      ),

    );
  }
}
