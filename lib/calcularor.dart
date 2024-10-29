import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {

    final NumberOne = new TextEditingController();
    final NumberTwo = new TextEditingController();
    final Operator = new TextEditingController();
    final FinalResult = new TextEditingController();


    void pickOperator(String operate){
      Operator.text = operate;
    }


    void calculate(){

      var One = int.parse(NumberOne.text);
      var Two = int.parse(NumberTwo.text);
 
      if(Operator.text == "+"){
      var Result = One + Two;
      FinalResult.text = Result.toString();
      }else if(Operator.text == "-"){
      var Result = One - Two;
      FinalResult.text = Result.toString();
      }

      var Resultt = One+Two;  

      print(Resultt);
     

    }




    return Scaffold(
 appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child:Container(
          width: double.infinity,
          
          
          child:Column(
            
            children:[
      
              SizedBox(height: 20,),
             
              Text("Calculator",
              style: TextStyle(
             color: Colors.grey[800],
              fontWeight: FontWeight.bold,
            fontSize: 40)),
             
             
              SizedBox(height: 20,),
              Container(
                child: TextField(
                  controller: NumberOne,
                  decoration: InputDecoration(
                    labelText: "Enter Number One"
                  ),
                ),
              ),
           
               SizedBox(height: 20,),
              Container(
                child: TextField(
                  controller: Operator,
                  decoration: InputDecoration(
                    labelText: "Enter Operator"
                  ),
                ),
              ),
                SizedBox(height: 20,),
              Container(
                child: TextField(
                  controller: NumberTwo,
                  decoration: InputDecoration(
                    labelText: "Enter Number Two"
                  ),
                ),
              ),
             
              SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton(onPressed: ()=>pickOperator("+"), child: Text("Add")),
                  SizedBox(width: 3,),
                  ElevatedButton(onPressed: ()=>pickOperator("-"), child: Text("Subtract")),
                  SizedBox(width: 3,),
                  ElevatedButton(onPressed: ()=>pickOperator("/"), child: Text("Divide")),
                  SizedBox(width: 3,),
                  ElevatedButton(onPressed: ()=>pickOperator("x"), child: Text("Multiply")),
                ],
              ),

              SizedBox(height: 20,),
             
              TextField(controller: FinalResult,),
             
              SizedBox(height: 5,),

              ElevatedButton(onPressed: ()=>calculate(), child: Text("Calculate"))



            ]
          )
        )
      )
    );
  }
}