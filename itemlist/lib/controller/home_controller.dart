// ignore_for_file: unused_import, non_constant_identifier_names, avoid_function_literals_in_foreach_calls, prefer_interpolation_to_compose_strings, duplicate_ignore, unnecessary_overrides, annotate_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';


import '../model/Itemclass.dart';

class HomeController extends GetxController {
  // ignore: non_constant_identifier_names
  List<ItemClass> Items = [
    ItemClass(Itemid: "1", ItemName: "Front Section"),
    ItemClass(Itemid: "2", ItemName: "Back Section"),
    ItemClass(Itemid: "3", ItemName: "Assembly Section"),


  ];
//Empty Array for storing values from class 
  List<dynamic> selecteditem = [];

//empty Variabls
  var selecteditemvalue = ''.obs;

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
            title: const Text("select"),
            selectedColor: Colors.blue,
            searchable: true,
            onConfirm: (results) {
              
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
  
}
