import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget{
  const Contact({Key? key}) : super(key: key);
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
      
      child: Padding(
        padding: const EdgeInsets.only(top: 40,bottom: 30,right: 20,left:40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Container(decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 3.0, color: Colors.yellow),),),
                    child: Text("Get in touch",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  mediaQuery.size.width<500?20:40,color: Colors.white),))
            ,SizedBox(height: 40,),
            mywidget("Email:", "javidsaliq@gmail.com"),
            SizedBox(height: 20,),
            mywidget("Phone:", '6005959670'),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  openurl("https://github.com/saliq03");
                },hoverColor: Colors.deepOrangeAccent,
                    icon: FaIcon(FontAwesomeIcons.github,color: Colors.white,)),

                IconButton(onPressed: (){
                  openurl("https://www.linkedin.com/in/saliq-javid-58a01a246/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app");
                },hoverColor: Colors.deepOrangeAccent,
                    icon: FaIcon(FontAwesomeIcons.linkedinIn,color: Colors.white,)),

                IconButton(onPressed: (){
                  openurl("https://www.facebook.com/dar.saliq.773?mibextid=ZbWKwL");
                },hoverColor: Colors.deepOrangeAccent,
                    icon: FaIcon(FontAwesomeIcons.squareFacebook,color: Colors.white,)),

                IconButton(onPressed: (){
                  openurl("https://www.instagram.com/dar_saliq03?igsh=bmwxcjNncjRwOWF5");
                },
                    hoverColor: Colors.deepOrangeAccent,
                    icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.white,)),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Copyright © 2024 Saliq Javeed, All rights Reserved.",style: TextStyle(color: Colors.white70,fontSize: 16),),
            )

          ],
        ),
      ),
    );
  }

  Widget mywidget(String heading, String content){
    return Column(
      children: [
        Text(heading,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
       SizedBox(height: 10,),
        Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(content,style: TextStyle(color: Colors.white),),
            ),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(12)
          ),

        )
    ]
    );
  }

  Future<void> openurl(String url)async {
    print('in openurl');
    if(!await launchUrl(Uri.parse(url),mode: LaunchMode.inAppBrowserView)){
        throw Exception('could not open url');
    }
  }

}