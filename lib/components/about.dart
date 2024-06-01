import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget{
  const About({Key? key}) : super(key: key);
  State<About> createState()=>AboutState();
}
class AboutState extends State<About>{
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
    return Container(
        width:  mediaQuery.size.width*1,
        // height: 550,
        decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage("assets/images/aboutbg.jpg"),
    fit: BoxFit.cover
    )),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,bottom: 100,right: 20,left: 20),
          child: Column(
              children: [
                Text("ABOUT",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                SizedBox(height: 40,),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    // CircleAvatar(
                    //   radius: 150,
                    //   backgroundImage: AssetImage('assets/images/saliq.jpg'),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: 250,
                          height:270,
                          child: Image.asset('assets/images/saliq.jpg'),
                      decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color: Colors.black
                      )
                      ),),
                    ),
                    SizedBox(width: 15,),
                    infoColumn(),
                   ]
                )
                  ]
                ),
        )
      ),
    );
  }

  Column infoColumn(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Flutter Developer",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
          SizedBox(
            width: 700,
            child: Text("Hello! I’m Saliq Javeed , a Flutter Developer with a robust skill set in  Flutter,"
                " Dart, SQL, Java, XML, SQLite, and more. Currently in my final  year of B.Tech Computer Science,"
                " I'm actively working as an intern on  the Miety project at MANUU. With my knowledge "
                "and experience,  I strive to create efficient and innovative solutions in the realm of mobile development.",
                style: TextStyle(fontSize:20,color: Colors.white)),
          ),
          SizedBox(height: 30,),
          myRichText('Name', 'Saliq Javeed Dar'),
          SizedBox(height: 10,),
          myRichText('Age', '20 years'),
          SizedBox(height: 10,),
          myRichText('Email', 'javidsaliq@gmail.com'),
          SizedBox(height: 10,),
          myRichText('Freelance', 'Available'),
          SizedBox(height: 10,),
        ]
    );
  }

  RichText myRichText(String name,String data){
    return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$name: ',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white70)
            ),
            TextSpan(
                text: ' $data',
                style: TextStyle(fontSize: 20,color: Colors.white)
            )
          ]
        )
    );
  }
}