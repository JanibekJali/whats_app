import 'package:get/get.dart';

import '../controllers/whatsappkg_controller.dart';

class WhatsappkgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WhatsappkgController>(
      () => WhatsappkgController(),
    );
  }
}
