// ignore_for_file: unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:itemlist/controller/home_controller.dart';

class Valueshow extends GetView<HomeController>{
  const Valueshow({Key? key}) : super(key: key);
   @override
   Widget build(BuildContext context)  {
    return   Scaffold(
       appBar: AppBar(
        title: const Text('MultiSelectDialog'),
        centerTitle: true,
      ),
     body: Center(
       child: Column(
        children: [
          Center(
            child: Container(
              child: Obx(() =>   Text(controller.selecteditemvalue.value,style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),)),
            ),
          ),
        ],
       ),
     ),
     
     

    );
   }
}