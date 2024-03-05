import 'package:get/get.dart';

import '../viewmodels/details_viewmodel.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsViewModel());
  }
}
