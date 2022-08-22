// ignore_for_file: unused_import, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_function_literals_in_foreach_calls, dead_code, avoid_print, equal_keys_in_map, sized_box_for_whitespace, avoid_unnecessary_containers

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itemlist/controller/home_controller.dart';
import 'package:itemlist/model/Itemclass.dart';
import 'package:itemlist/view/Valueshow.dart';
import 'package:http/http.dart' as http;
import 'package:multi_select_flutter/multi_select_flutter.dart';

// ignore: must_be_immutable
class Home extends GetView<HomeController>{
   Home({Key? key}) : super(key: key);

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  



   @override
   Widget build(BuildContext context)  {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('MultiSelectDialog'),
        centerTitle: true,
      ),

      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
         Container(
          margin: const EdgeInsets.fromLTRB(60, 0, 50, 0),
          width: 250,
          height: 70,
           child: MultiSelectDialogField<dynamic>(
              listType: MultiSelectListType.LIST, 
              chipDisplay: MultiSelectChipDisplay.none(),
           decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 27, 49),
                      width: 3,
                    ),
                  ),
                  buttonIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  buttonText: Text(
                  "Select Items",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                    ),
                  ),
              items: controller.Items.
              map((Items)=>  MultiSelectItem<ItemClass>(Items,Items.ItemName!),)
              .toList(), 
         
         
              onConfirm: (result)   { 
                 
         
                controller.selecteditem = result;
                controller.selecteditemvalue.value='';
                controller.selecteditem.forEach((element) async {
                controller.selecteditemvalue.value = controller.selecteditemvalue.value +''+element.Itemid;         
         
                });
               },
            ),
         ),
          
          Container(
          width: 250,
          height: 70,  
            child: MultiSelectDialogField<dynamic>(
              listType: MultiSelectListType.LIST, 
              chipDisplay: MultiSelectChipDisplay.none(),
                 decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                       color: const Color.fromARGB(255, 1, 27, 49),
                      width: 3,
                    ),
                  ),
                  buttonIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  buttonText: Text(
                    "Select Items",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                    ),
                  ),
              items: controller.Items2.
              map((Items2)=>  MultiSelectItem<ItemClass>(Items2,Items2.ItemName!),)
              .toList(), 
          
          
              onConfirm: (result)   { 
                 
          
                controller.selecteditem2 = result;
                controller.selecteditemvalue2.value='';
                controller.selecteditem2.forEach((element) async {
                controller.selecteditemvalue2.value = controller.selecteditemvalue2.value +''+element.Itemid;
          
              
          
                });
          
          
               },
            ),
          ),
           
           const SizedBox(height: 1,),
      
            Container(
              width: 250,
              height: 70,  
              child: MultiSelectDialogField<dynamic>(
              listType: MultiSelectListType.LIST, 
              chipDisplay: MultiSelectChipDisplay.none(),
                     decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      color: const Color.fromARGB(255, 2, 25, 44),
                      width: 3,
                    ),
                  ),
                  buttonIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  buttonText: Text(
                    "Select Items",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                    ),
                  ),
              items: controller.Items3.
              map((Items3)=>  MultiSelectItem<ItemClass>(Items3,Items3.ItemName!),)
              .toList(), 
                  
                  
              onConfirm: (result)   { 
                 
                  
                controller.selecteditem3 = result;
                controller.selecteditemvalue3.value='';
                controller.selecteditem3.forEach((element) async {
                controller.selecteditemvalue3.value = controller.selecteditemvalue3.value +''+element.Itemid;
                  
              
                  
                });
                  
                  
               },
                      ),
            ),
      
      const SizedBox(height: 1,),
      
           Container(
            width: 250,
              height: 70, 
             child: MultiSelectDialogField<dynamic>(
              listType: MultiSelectListType.LIST, 
              chipDisplay: MultiSelectChipDisplay.none(),
                    decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      color: const Color.fromARGB(255, 4, 21, 35),
                      width: 3,
                    ),
                  ),
                  buttonIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  buttonText: Text(
                    "Select Items",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                    ),
                  ),
              items: controller.Items4.
              map((Items4)=>  MultiSelectItem<ItemClass>(Items4,Items4.ItemName!),)
              .toList(), 
                 
                 
              onConfirm: (result)   { 
                 
                controller.selecteditem4 = result;
                controller.selecteditemvalue4.value='';
                controller.selecteditem4.forEach((element) async {
                controller.selecteditemvalue4.value = controller.selecteditemvalue4.value +''+element.Itemid;
                 
                });
               },
                 
                     ),
           ),
      
           const SizedBox(
                height: 10,
              ),
               Obx(() =>   Text(controller.selecteditemvalue.value)),
               Obx(() =>   Text(controller.selecteditemvalue2.value)),
               Obx(() =>   Text(controller.selecteditemvalue3.value)),
               Obx(() =>   Text(controller.selecteditemvalue4.value)),
           
              
          ElevatedButton(onPressed: () async {

            print(controller.selecteditemvalue.value,);
            print(controller.selecteditemvalue2.value);
            print(controller.selecteditemvalue3.value,);
            print(controller.selecteditemvalue4.value);
      
            await users.add({
                     " line no.1item": controller.selecteditemvalue.value,
                     " select Operation" : controller.selecteditemvalue2.value,
                     " Select Operation" : controller.selecteditemvalue3.value,
                     " Line no.4item": controller.selecteditemvalue4.value,
      
                  }).then((value) => print("Added value "));
      
        //      controller.selecteditemvalue.isEmpty ? controller.showMultiSelect(): showDialog(
        //   context: context,
        //   builder: (context) => AlertDialog(
        //     title: const Text('Do You Want To Add Another Defect?'),
        //     actions: [
        //       ElevatedButton(onPressed: controller.showMultiSelect,
        //        child: const Text('yes')),
      
        //       ElevatedButton(
        //         child: const Text('No'),
        //         onPressed: () {
      
      
      
        //          Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => const Valueshow()));
        //         },
        //       ),
        //     ],
        //   ),
        // );
             
          }, 
          child: const Text("Submit data"),
          ),
            
          ],
        ),
      

    );

    
  
     

   }
   

   
}