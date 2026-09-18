
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String process= "";
  String answer="0";
  int firstnumber= 0;
  int secondnumber= 0;
  String operator="";
  double result = 0;

  

  void operation(String op){
    setState(() {
      firstnumber= int.parse(answer);
      operator=op;
      answer="";
      process="$firstnumber $operator";
      

    });
  }

  void equalto(){
    setState(() {
      secondnumber= int.parse(answer);

      process= "$process $secondnumber";

      
      if(operator=="+"){
        result=firstnumber.toDouble() + secondnumber.toDouble();

      }
      else if(operator=="-"){
        result=firstnumber.toDouble() - secondnumber.toDouble();
      }
      else if(operator=="*"){
        result=firstnumber.toDouble()*secondnumber.toDouble();
      }
      else{
        result=firstnumber/secondnumber;
      }
      answer = result.toString();
      
    });
  }

  void clearCalculator(){

  setState(() {

    answer = "0";
    firstnumber = 0;
    operator = "";
    process="";

  });

}
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF5699CA),
                ),
                child: TextButton(
                  onPressed: (){}, 
                  child: Text(
                    "History",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    )
                    ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 350,
              width: 400,
             alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    process,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                  
                    ),
                  ),
        
                  Text(
                    answer,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                  
                    ),
                  ),
                ],
              ),
            ),
        
            Column(children: [
              SizedBox(height: 50, width: 10,),
              Row(
                children: [
                  
                  Expanded(
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed: (){
                      setState(() {
                    if(answer=="0"){
                      answer="7";
                    }else{
                      answer+="7";
                    }
                  });}, child: Text("7"))),
        
                  Expanded(
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:(){
                    setState(() {
                      if(answer=="0"){
                        answer="8";
                      }else{
                        answer+="8";
                      }
                    });
                    
                  } , child: Text("8"))),
        
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:(){
                    setState(() {
                      if(answer=="0"){
                        answer="9";
                      }else{
                        answer+="9";
                      }
                    });
                  } , child: Text("9"))),
                  
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:()=> operation("/"), child: Text("/"))),
                ],
              ),
              SizedBox(height: 25, width: 10,),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed: (){
                    setState(() {
                      if(answer=="0"){
                        answer="4";
                      }else{
                        answer+="4";
                      }
                    });
                  }, child: Text("4"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed: (){
                    setState(() {
                      if(answer=="0"){
                        answer="5";
                      }else{
                        answer+="5";
                      }
                    });
                  }, child: Text("5"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:(){
                    setState(() {
                      if(answer=="0"){
                        answer="6";
                      }else{
                        answer+="6";
                      }
                    });
                  } , child: Text("6"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:()=> operation("*") , child: Text("*"))),
                ],
              ),
              SizedBox(height: 25, width: 10,),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:(){
                    setState(() {
                      if(answer=="0"){
                        answer="1";
                      }else{
                        answer+="1";
                      }
                    });
                  } , child: Text("1"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed: (){
                    setState(() {
                      if(answer=="0"){
                        answer="2";
                      }else{
                        answer+="2";
                      }
                    });
                  }, child: Text("2"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:(){
                    setState(() {
                      if(answer=="0"){
                        answer="3";
                      }else{
                        answer+="3";
                      }
                    });
                  } , child: Text("3"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:()=> operation("-"), child: Text("-"))),
                ],
              ),
              SizedBox(height: 25, width: 10,),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:()=>clearCalculator(), child: Text("C"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:(){
                    setState(() {
                      if(answer=="0"){
                        answer="0";
                      }else{
                        answer+="0";
                      }
                    });
                  } , child: Text("0"))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:()=>equalto(), child: Text("="))),
                  Expanded(child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size.fromHeight(80), 
                    ),
                    onPressed:()=> operation("+"), child: Text("+"))),
                ],
              ),
        
            ],)
          ],
        ),
      ),
        
        
    );
  }
}