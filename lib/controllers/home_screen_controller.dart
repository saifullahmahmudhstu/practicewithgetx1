
import 'package:get/get.dart';


class HomeScreenController extends GetxController{

var appName= 'Practice The GetX'.obs;
var countryList=[].obs;



  void addCountryList() {

    countryList.add('Bangladesh');
    countryList.add('India');
    countryList.add('Bhutan');
    countryList.add('Pakistan');
    countryList.add('Maldives');
    countryList.add('Nepal');
  }

  void onDeleteData(i) {
    countryList[i] = countryList.removeAt(i);

  }

  void UpdateListData(int i) {

    countryList[i] = 'United Kingdom';

  }





}