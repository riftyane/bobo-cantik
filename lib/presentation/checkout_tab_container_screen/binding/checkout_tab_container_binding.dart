import '../controller/checkout_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutTabContainerScreen.
///
/// This class ensures that the CheckoutTabContainerController is created when the
/// CheckoutTabContainerScreen is first loaded.
class CheckoutTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutTabContainerController());
  }
}
