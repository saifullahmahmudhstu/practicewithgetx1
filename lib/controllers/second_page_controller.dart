

import 'package:get/get.dart';
import 'package:practice_with_getx1/models/sim_company_model.dart';

class SecondPageController extends GetxController{

  var modelSim =<SimModel>[].obs;

  void addDataToModel() {

    modelSim.add(SimModel(company: 'GrameenPhone', country: 'Bangladesh',icon1:'https://pbs.twimg.com/profile_images/965446181248647168/M0VY2MqI_400x400.jpg'  ));
    modelSim.add(SimModel(company: 'Telnor', country: 'Pakistan'));
    modelSim.add(SimModel(company: 'Reliance', country: 'India'));

    
  }
  
  
}