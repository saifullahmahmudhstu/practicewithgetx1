

import 'package:get/get.dart';
import 'package:practice_with_getx1/models/sim_company_model.dart';

class SecondPageController extends GetxController{

  var modelSim =<SimModel>[].obs;

  void addDataToModel() {
    
    modelSim.add(SimModel(company: 'GrameenPhone', country: 'Bangladesh'));
    modelSim.add(SimModel(company: 'Telnor', country: 'Pakistan'));
    
  }
  
  
}