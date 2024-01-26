import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/checkout_tab_container_screen/models/checkout_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CheckoutTabContainerScreen.
///
/// This class manages the state of the CheckoutTabContainerScreen, including the
/// current checkoutTabContainerModelObj
class CheckoutTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<CheckoutTabContainerModel> checkoutTabContainerModelObj =
      CheckoutTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
