import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderButton extends StatefulWidget {
  final String name;
  final mykey;

  const HeaderButton({required this.name, this.mykey});


  @override
  State<HeaderButton> createState() => HeaderButtonState();
}

class HeaderButtonState extends State<HeaderButton> {
  Color buttonColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    bool ismobile=MediaQuery.of(context).size.width>700?false:true;
    return MouseRegion(
      onHover: (events){
        buttonColor=Color(0xFF0086D6);
        setState(() {});
      },
      onExit: (events){
        buttonColor=Colors.black;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: buttonColor,
        ),

        child: TextButton(
            onPressed: (){
              Scrollable.ensureVisible(widget.mykey.currentContext!);

              if(ismobile){Navigator.pop(context);}
            }, child: Text(widget.name,style: TextStyle(color: Colors.white,))),
      ),
    );
  }
}
