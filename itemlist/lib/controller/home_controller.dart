// ignore_for_file: unused_import, non_constant_identifier_names, avoid_function_literals_in_foreach_calls, prefer_interpolation_to_compose_strings, duplicate_ignore, unnecessary_overrides, annotate_overrides, avoid_print




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';



import '../model/Itemclass.dart';

class HomeController extends GetxController {

  
  // ignore: non_constant_identifier_names
  List<ItemClass> Items = [
    ItemClass(Itemid: "Line no. 1'", ItemName: "'Line no. 1'"),
    ItemClass(Itemid: "Line no. 2", ItemName: "'Line no. 2'"),
    ItemClass(Itemid: "Line no. 3", ItemName: "'Line no. 3'"),
    ItemClass(Itemid: "Line no. 4", ItemName: "'Line no. 4'"),
    ItemClass(Itemid: "Line no. 5", ItemName: "'Line no. 5'"),
    ItemClass(Itemid: "Line no. 6", ItemName: "'Line no. 6'"),
    ItemClass(Itemid: "Line no. 7", ItemName: "'Line no. 7'"),
    ItemClass(Itemid: "Line no. 8", ItemName: "'Line no. 8'"),
    ItemClass(Itemid: "Line no. 9", ItemName: "'Line no. 9'"),
    ItemClass(Itemid: "Line no. 10", ItemName: "'Line no. 10'"),
    ItemClass(Itemid: "Line no. 11", ItemName: "'Line no. 11'"),
    ItemClass(Itemid: "Line no. 12", ItemName: "'Line no. 12'"),
  ];

    List<ItemClass> Items2 = [
    ItemClass(Itemid: "'Front Section'", ItemName: "'Front Section'"),
    ItemClass(Itemid: "'Back Section'", ItemName: "'Back Section'"),
    ItemClass(Itemid: "'Assembly Section'", ItemName: "'Assembly Section'"),
  
  ];

  List<ItemClass> Items3 = [
    ItemClass(Itemid: "'Select Operation'", ItemName: "'Select Operation'"),
    ItemClass(Itemid: "'Fly Overlock'", ItemName: "'Fly Overlock'"),
    ItemClass(Itemid: "'Front Panel Overlock'", ItemName: "'Front Panel Overlock'"),
     ItemClass(Itemid: "'Coin Pkt Hem'", ItemName: "'Coin Pkt Hem'"),
    ItemClass(Itemid: "'Coin Pkt Attach'", ItemName: "'Coin Pkt Attach'"),
    ItemClass(Itemid: "'Coin Pkt Guider'", ItemName: "'Coin Pkt Guider'"),
     ItemClass(Itemid: "'Facing'", ItemName: "'Facing'"),
    ItemClass(Itemid: "'Fly Overlock'", ItemName: "'Fly Overlock'"),
    ItemClass(Itemid: "'Lining Top'", ItemName: "'Lining Top'"),
  ];


  List<ItemClass> Items4 = [
    ItemClass(Itemid: "Line no. 1'", ItemName: "'Line no. 1'"),
    ItemClass(Itemid: "Line no. 2", ItemName: "'Line no. 2'"),
    ItemClass(Itemid: "Line no. 3", ItemName: "'Line no. 3'"),
    ItemClass(Itemid: "Line no. 4", ItemName: "'Line no. 4'"),
    ItemClass(Itemid: "Line no. 5", ItemName: "'Line no. 5'"),
    ItemClass(Itemid: "Line no. 6", ItemName: "'Line no. 6'"),
    ItemClass(Itemid: "Line no. 7", ItemName: "'Line no. 7'"),
    ItemClass(Itemid: "Line no. 8", ItemName: "'Line no. 8'"),
    ItemClass(Itemid: "Line no. 9", ItemName: "'Line no. 9'"),
    ItemClass(Itemid: "Line no. 10", ItemName: "'Line no. 10'"),
    ItemClass(Itemid: "Line no. 11", ItemName: "'Line no. 11'"),
    ItemClass(Itemid: "Line no. 12", ItemName: "'Line no. 12'"),
  ];

//Empty Array for storing values from class 
  List<dynamic> selecteditem = [];
  List <dynamic> selecteditem2 = [];
  List<dynamic> selecteditem3 =[];
  List<dynamic> selecteditem4 =[];
  
//empty Variabls

  var selecteditemvalue = ''.obs;
  var selecteditemvalue2 = " ".obs;
  var selecteditemvalue3 = " ".obs;
  var selecteditemvalue4 = " ".obs;

    void onInit() {
    super.onInit();
  }

  // ignore: annotate_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void showMultiSelect() async {
    await showDialog(
        context: Get.context!,
        builder: (ctx) {
          return MultiSelectDialog(
            listType: MultiSelectListType.LIST,
            initialValue: selecteditem,
            items: Items
                .map((Items) => MultiSelectItem<ItemClass>(Items, Items.ItemName!))
                .toList(),
            title: const Text("select "),
            selectedColor: Colors.blue,
            searchable: true,
            onSelectionChanged: (results)  {

              selecteditem = results;
              selecteditemvalue.value = "";
              selecteditem.forEach((element) {
              selecteditemvalue.value =
              selecteditemvalue.value + " " + element.Itemid;
              });

            
            },
          );

        });

        
        
  }

   void showMultiSelect2() async {
    await showDialog(
        context: Get.context!,
        builder: (ctx) {
          return MultiSelectDialog(
            listType: MultiSelectListType.LIST,
            initialValue: selecteditem2,
            items: Items2
                .map((Items2) => MultiSelectItem<ItemClass>(Items2, Items2.ItemName!))
                .toList(),
            title: const Text("select"),
            selectedColor: Colors.blue,
            searchable: true,
            onSelectionChanged: (results)  {

              selecteditem2 = results;
              selecteditemvalue2.value = "";
              selecteditem2.forEach((element) {
              selecteditemvalue2.value =
              selecteditemvalue2.value + " " + element.Itemid;
              });

            
            },
          );

        });

        
        
  }
  
   void showMultiSelect3() async {
    await showDialog(
        context: Get.context!,
        builder: (ctx) {
          return MultiSelectDialog(
            listType: MultiSelectListType.LIST,
            initialValue: selecteditem2,
            items: Items2
                .map((Items3) => MultiSelectItem<ItemClass>(Items3, Items3.ItemName!))
                .toList(),
            title: const Text("select"),
            selectedColor: Colors.blue,
            searchable: true,
            onSelectionChanged: (results)  {

              selecteditem3 = results;
              selecteditemvalue3.value = "";
              selecteditem3.forEach((element) {
              selecteditemvalue3.value =
              selecteditemvalue3.value + " " + element.Itemid;
              });

            
            },
          );

        });
   }


    void showMultiSelect4() async {
    await showDialog(
        context: Get.context!,
        builder: (ctx) {
          return MultiSelectDialog(
            listType: MultiSelectListType.LIST,
            initialValue: selecteditem2,
            items: Items4
                .map((Items4) => MultiSelectItem<ItemClass>(Items4, Items4.ItemName!))
                .toList(),
            title: const Text("select"),
            selectedColor: Colors.blue,
            searchable: true,
            onSelectionChanged: (results)  {

              selecteditem4 = results;
              selecteditemvalue4.value = "";
              selecteditem4.forEach((element) {
              selecteditemvalue4.value =
              selecteditemvalue4.value + " " + element.Itemid;
              });

            
            },
          );

        });
}
}

