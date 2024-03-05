import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_demo/models/quotes_response.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final QuotesResponse data = Get.arguments;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: const Text('Details Screen'),
        ),
        body: Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            color: Colors.purple[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data.sentence ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 10),
                  Text("- ${data.character?.name}", textAlign: TextAlign.center)
                ])));
  }
}
