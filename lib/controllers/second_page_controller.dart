

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:practice_with_getx1/models/sim_company_model.dart';

class SecondPageController extends GetxController{

  var modelSim =<SimModel>[].obs;

  void addDataToModel() {
    
    modelSim.add(SimModel(company: 'GrameenPhone', country: 'Bangladesh',icon1:'https://1000logos.net/wp-content/uploads/2020/11/Grameenphone-Logo.jpg'  ));
    modelSim.add(SimModel(company: 'Telnor', country: 'Pakistan'));
    modelSim.add(SimModel(company: 'Reliance', country: 'India'));

    
  }
  
  
}