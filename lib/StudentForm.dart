

import 'package:flutter/material.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({Key? key}) : super(key: key);

  @override
  _StudentFormState createState() => _StudentFormState();
}
final 
class _StudentFormState extends State<StudentForm> {
  @override
  Widget build(BuildContext context) {
final UserName =  TextEditingController();
final UserEmail =  TextEditingController();
final DOB = TextEditingController();
final Password = TextEditingController();

void onsubmit(String UserName, String UserEmail, String DOB, String Password){
print("UserName: "+UserName +"\n UserEmail: "+ UserEmail+ "\n Date Of Birth: "+ DOB+ "\n Password: "+Password);
}

    return Scaffold(
        appBar: AppBar(
          title: const Text("Student Register Form"),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                child: TextField(
                  controller: UserName,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: "Enter Your Name"),
                ),
              ),
              SizedBox(height: 7,),
              Container(
                
                width: 200,
                child: TextField(
                  controller: UserEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Enter Your Email"),
                ),
              ),
              SizedBox(height: 7,),
              Container(
                width: 200,
                child: TextField(
                  controller: DOB,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(labelText: "Enter Your Date OF Birth"),
                ),
              ),
              SizedBox(height: 7,),
              Container(
                width: 200,
                child: TextField(
                  controller: Password,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Enter Your password"),
                ),
              ),
              SizedBox(height: 7,),
            ElevatedButton
            (onPressed: ()=> onsubmit(UserName.text, UserEmail.text, DOB.text, Password.text) , child: Text("add data"))
            ],
            
              
          ),
        ));
  }
}
