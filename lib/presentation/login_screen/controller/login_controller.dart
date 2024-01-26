import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailColumnController = TextEditingController();

  TextEditingController passwordColumnController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> termOfServicePrivacyPolicyCheckBox = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailColumnController.dispose();
    passwordColumnController.dispose();
  }
}
