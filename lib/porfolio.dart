import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/about.dart';
import 'package:my_portfolio/components/contact.dart';
import 'package:my_portfolio/components/resume.dart';
import 'package:my_portfolio/components/services.dart';

import 'components/home.dart';

class Portfolio extends StatefulWidget{
  State<Portfolio> createState()=>_PortfolioState();
}

class _PortfolioState extends State<Portfolio>{

  List<Widget> navitems=[];

  bool ismobile=false;
  final homekey=GlobalKey();
  final aboutkey=GlobalKey();
  final servicekey=GlobalKey();
  final resumetkey=GlobalKey();
  final contactkey=GlobalKey();

  @override
  void initState() {
    navitems=[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: (){
          Scrollable.ensureVisible(homekey.currentContext!);
          if(ismobile){Navigator.pop(context);}
          },
            child: Text('Home',style: TextStyle(color: Colors.white,),)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: (){
          Scrollable.ensureVisible(aboutkey.currentContext!);
        if(ismobile){Navigator.pop(context);}},
            child: Text('About',style: TextStyle(color: Colors.white,),)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: (){Scrollable.ensureVisible(servicekey.currentContext!);
        if(ismobile){Navigator.pop(context);}},
          child: Text('Services',style: TextStyle(color: Colors.white,))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: (){
          Scrollable.ensureVisible(resumetkey.currentContext!);
          if(ismobile){Navigator.pop(context);}
        },

            child: Text('Resume',style: TextStyle(color: Colors.white,))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: (){
          if(ismobile){Navigator.pop(context);}
        }, child: Text('Portfolio',style: TextStyle(color: Colors.white,))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: (){
          Scrollable.ensureVisible(contactkey.currentContext!);
          if(ismobile){Navigator.pop(context);}
        }, child: Text('Contact',style: TextStyle(color: Colors.white,))),
      ),];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ismobile=MediaQuery.of(context).size.width>700 ? false:true;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('  <Saliq/>',style: TextStyle(fontSize: 20,color:Colors.white),),
          actions: ismobile?null:navitems,
          backgroundColor:Colors.black

      ),
      drawer: ismobile? Drawer(
        backgroundColor: Colors.black12,
        child: ListView(
          children: navitems,
        ),
      ):null,
      body: SingleChildScrollView(
        child: Column(
            children: [
              Home(key: homekey,),
              About(key: aboutkey,),
              Services(key: servicekey,),
              Resume(key: resumetkey,),
              Contact(key: contactkey,),

            ]
        ),
      ),
    );
  }

}