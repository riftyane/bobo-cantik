import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/checkout_page/models/checkout_model.dart';

/// A controller class for the CheckoutPage.
///
/// This class manages the state of the CheckoutPage, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {
  CheckoutController(this.checkoutModelObj);

  Rx<CheckoutModel> checkoutModelObj;
}
