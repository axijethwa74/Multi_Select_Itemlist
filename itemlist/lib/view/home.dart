// ignore_for_file: unused_import, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_function_literals_in_foreach_calls, dead_code

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itemlist/controller/home_controller.dart';
import 'package:itemlist/model/Itemclass.dart';
import 'package:itemlist/view/Valueshow.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Home extends GetView<HomeController>{
  const Home({Key? key}) : super(key: key);
   @override
   Widget build(BuildContext context)  {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('MultiSelectDialog'),
        centerTitle: true,
      ),

      body: Column(
        children:  [
       MultiSelectDialogField<dynamic>(
          listType: MultiSelectListType.LIST, 
          chipDisplay: MultiSelectChipDisplay.none(),
       decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
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


          onConfirm: (result) { 
            controller.selecteditem = result;
            controller.selecteditemvalue.value='';
            controller.selecteditem.forEach((element) {
            controller.selecteditemvalue.value = controller.selecteditemvalue.value +''+element.Itemid;

            });


           },
        ),

         const SizedBox(
              height: 40,
            ),
             Obx(() =>   Text(controller.selecteditemvalue.value)),
            const SizedBox(
              height: 40,
            ),

            
        ElevatedButton(onPressed: (){
          
           controller.selecteditemvalue.isEmpty ? controller.showMultiSelect(): showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Do You Want To Add Another Defect?'),
          actions: [
            ElevatedButton(onPressed: controller.showMultiSelect,
             child: const Text('yes')),

            ElevatedButton(
              child: const Text('No'),
              onPressed: () {
               Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const Valueshow()));
              },
            ),
          ],
        ),
      );
           
        }, 
        child: const Text("Show"),
        ),
          
        ],
      ),

    );

    
  
     

   }
   

   
}