import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel _homeViewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Home Screen'),
      ),
      body: Obx(() {
        if (_homeViewModel.dataList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: _homeViewModel.dataList.length,
            itemBuilder: (context, index) {
              return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  elevation: 5,
                  color: Colors.purple[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ListTile(
                    title: Column(children: [
                      Text(
                        _homeViewModel.dataList[index].sentence ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                          "- ${_homeViewModel.dataList[index].character?.name}",
                          textAlign: TextAlign.right)
                    ]),
                    onTap: () {
                      Get.toNamed('/details',
                          arguments: _homeViewModel.dataList[index]);
                    },
                  ));
            },
          );
        }
      }),
    );
  }
}
