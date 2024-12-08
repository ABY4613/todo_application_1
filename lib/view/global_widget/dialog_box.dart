// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_application_1/view/global_widget/custom_button.dart';

class DialogBox extends StatelessWidget {
  
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content:Container(
        height: 160,
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "add a nee todo"
            ),
          ),
            SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
              CustomButton(
                buttonText: "save"),
              SizedBox(width: 10,),
                CustomButton(
                buttonText: "cancel"),
            ],
          )
        ],),
      ) ,
    );
  }
}