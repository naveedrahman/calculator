
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
  final String title;
  final VoidCallback Onpress;
  final  Color color;

  const Mybutton({Key? key,required this.title,required this.Onpress,this.color= Colors.white38,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: Onpress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 84,
            decoration: BoxDecoration(
            color: color,
             shape: BoxShape.circle
            ),
            child: Center(
              child: Text(title,style: TextStyle(fontSize: 25,color: Colors.white),
                        ),
            ),
          ),
        ),
      ),
    );
  }
}

