import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_with_getx1/controllers/second_page_controller.dart';

class SecondPage extends StatelessWidget {
  final _controller2 = Get.put(SecondPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                _controller2.addDataToModel();
              },
              icon: const Icon(Icons.add_circle))
        ],
      ),
      body: Obx(()=>ListView.builder(
          itemCount: _controller2.modelSim.length,
          itemBuilder: (context ,index ){
            return ListTile(
              title: Text(_controller2.modelSim[index].company),
              subtitle: Text(_controller2.modelSim[index].country),
              trailing:  Image.network(_controller2.modelSim[0].icon1.toString()),
             leading:  Text(_controller2.modelSim[index].company[0])
                
            );
          }),),
    );
  }
}
