import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/about.dart';

import 'components/home.dart';

class Portfolio extends StatefulWidget{
  State<Portfolio> createState()=>_PortfolioState();
}

class _PortfolioState extends State<Portfolio>{
  List<Widget> navitems=[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: (){}, child: Text('Home',style: TextStyle(color: Colors.white,),)),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: (){}, child: Text('Education',style: TextStyle(color: Colors.white,),)),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: (){}, child: Text('Skills',style: TextStyle(color: Colors.white,))),
    )
  ];


  bool ismobile=false;
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
              Home(),
              About()
            ]
        ),
      ),
    );
  }

}