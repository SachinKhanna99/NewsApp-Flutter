import 'package:get/state_manager.dart';
import 'package:news_flutter_test/model/package.dart';
import 'package:news_flutter_test/services/package_Services.dart';

class PackageController extends GetxController {
  var isloading = true.obs;
  var productlist = List<Welcome>().obs;

  @override
  void onInit() {
   // fetchProduct();
    super.onInit();
  }

  // void fetchProduct() async {
  //   try {
  //     isloading(true);
  //     var product = await RemoteServices.fetch();
  //     if (product != null) {
  //       productlist.value = product;
  //     }
  //   } finally {
  //     isloading(false);
  //   }
  // }
}
