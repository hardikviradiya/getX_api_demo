import 'package:get/get.dart';

import '../repositories/quote_repository.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuoteRepository());
    Get.lazyPut(() => HomeViewModel());
  }
}
