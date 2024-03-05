import 'package:get/get.dart';
import 'package:getx_api_demo/models/quotes_response.dart';
import '../repositories/quote_repository.dart';

class HomeViewModel extends GetxController {
  final QuoteRepository _repository = QuoteRepository();
  RxList<QuotesResponse> dataList = <QuotesResponse>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      dataList.value = await _repository.fetchData('random/50');
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
