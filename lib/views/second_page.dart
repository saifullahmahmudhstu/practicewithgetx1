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
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Obx(()=>ListView.builder(
          itemCount: _controller2.modelSim.length,
          itemBuilder: (context ,index ){
            return ListTile(
              title: Text(_controller2.modelSim[index].company),
              subtitle: Text('$index'),
            );
          }),),
    );
  }
}
