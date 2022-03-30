import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_with_getx1/controllers/home_screen_controller.dart';
import 'package:practice_with_getx1/views/second_page.dart';


class HomeScreen extends StatelessWidget {
  
  final _controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(()=> Text(_controller.appName.toString())),
        actions: [
          IconButton(
              onPressed: (){
                _controller.addCountryList();
              },
              icon: const Icon(Icons.add)),

              IconButton(onPressed: (){
                Get.to(SecondPage());
              },

              icon: Icon(Icons.forward))
        ],
        ),

      body: Obx(()=> ListView.builder(
          itemCount: _controller.countryList.length,
          itemBuilder: (context ,index) {
            return ListTile(

              title: Text(_controller.countryList[index]),
              subtitle: Text('$index'),
              onTap: (){
                _controller.onDeleteData(index);
              },
              onLongPress: (){
                _controller.UpdateListData(index);
              },
            );
          }),)
    );
  }


}
