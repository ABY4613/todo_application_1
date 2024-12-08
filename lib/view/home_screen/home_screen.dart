// ignore_for_file: prefer_const_constructors, unused_import, annotate_overrides, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_application_1/controller/home_screen_controller.dart';
import 'package:todo_application_1/view/global_widget/dialog_box.dart';
import 'package:todo_application_1/view/global_widget/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback(
  //     (timeStamp) async {
  //       await context
  //           .read<HomeScreenController>()
  //           .fetchNationalizeData();
  //     },
  //   );
  //   super.initState();
  // }
void createNewTask(){
  showDialog(
    context: context,
   builder: (context){
    return DialogBox();
   }
   );
}
  @override
  Widget build(BuildContext context) {
    // final NationalizeApiScreenState =
    //     context.watch<HomeScreenController>();
    return Scaffold(
      backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("TO DO"),
          elevation: 0,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          onPressed: () {
            createNewTask();
          },
          child: Icon(Icons.add),
        ),
        body: ListView(
          children: [TodoList(), TodoList(), TodoList()],
        ));
  }
}
