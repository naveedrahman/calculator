import 'package:calculator/component/Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput ='';
  var answer='';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
    body:Column(
      children: [
       Expanded(


         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 25),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,


             children: [
               Align(
           child: Text(userinput.toString(),style:TextStyle(fontSize: 20,color: Colors.white),)),
               Text(answer.toString(),style:TextStyle(fontSize: 20,color: Colors.white),),
             ],
           ),
         ),
       ),

        Expanded(
          flex: 3,
          child: Column(
            children:
           [
             Row(
               children: [
                 Mybutton(title: 'AC',Onpress: (){
                   userinput ='';
                   answer='';
                   setState(() {

                   });

                 },),
                 Mybutton(title: '+/-',Onpress: (){},),
                 Mybutton(title: '%',Onpress: (){
                   userinput +='%';
                   setState(() {

                   });

                 },),
                 Mybutton(title: '/',Onpress: (){
                   userinput +='/';
                   setState(() {

                   });

                 },color: Colors.amber,)
               ],
             ),
             Row(
               children: [
                 Mybutton(title: '7',Onpress: (){
                   userinput +='7';
                   setState(() {

                   });

                 },),
                 Mybutton(title: '8',Onpress: (){
                   userinput +='8';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '9',Onpress: (){
                   userinput +='9';
                   setState(() {

                   });
                 },),
                 Mybutton(title: 'x',Onpress: (){
                   userinput +='x';
                   setState(() {

                   });
                 },color: Colors.amber,)
               ],
             ),
             Row(
               children: [
                 Mybutton(title: '4',Onpress: (){
                   userinput +='4';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '5',Onpress: (){
                   userinput +='5';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '6',Onpress: (){
                   userinput +='6';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '-',Onpress: (){
                   userinput +='-';
                   setState(() {

                   });
                 },color: Colors.amber,)
               ],
             ),
             Row(
               children: [
                 Mybutton(title: '1',Onpress: (){
                   userinput +='1';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '2',Onpress: (){
                   userinput +='2';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '3',Onpress: (){
                   userinput +='3';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '+',Onpress: (){
                   userinput +='+';
                   setState(() {

                   });
                 },color: Colors.amber,)
               ],
             ),
             Row(
               children: [
                 Mybutton(title: '0',Onpress: (){
                   userinput +='0';
                   setState(() {

                   });
                 },),
                 Mybutton(title: '.',Onpress: (){
                   userinput +='.';
                   setState(() {

                   });
                 },),
                 Mybutton(title: 'DEL',Onpress: (){

                   userinput = userinput.substring(0,userinput.length-1);
                   setState(() {

                   });
                 },),
                 Mybutton(title: '=',Onpress: (){

                   equalpress();
                   setState(() {

                   });
                 },color: Colors.amber,)

               ],
             ),




            ],
          ),
        )
      ],
    ) ,

    );
  }
  void equalpress(){
    String finaluserinput= userinput.replaceAll('x','*' );
    Parser p= Parser();
    Expression expression=p.parse(finaluserinput);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    answer=eval.toString();


  }
}


