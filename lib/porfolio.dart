import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/about.dart';
import 'package:my_portfolio/components/contact.dart';
import 'package:my_portfolio/components/resume.dart';
import 'package:my_portfolio/components/services.dart';
import 'package:my_portfolio/widgets/Mybuttons.dart';
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
  final projectkey=GlobalKey();

  Color proCol=Colors.white70;

  @override
  void initState() {
    navitems=[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: HeaderButton(name: "Home",mykey: homekey),
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
        child: HeaderButton(name: "About",mykey: aboutkey),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: HeaderButton(name: "Services",mykey: servicekey),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: HeaderButton(name: "Resume",mykey: resumetkey),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
          child: HeaderButton(name: "Projects",mykey: projectkey),
        ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: HeaderButton(name: "Contact",mykey: contactkey),
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