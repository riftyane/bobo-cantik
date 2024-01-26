import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/beranda_screen/models/beranda_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BerandaScreen.
///
/// This class manages the state of the BerandaScreen, including the
/// current berandaModelObj
class BerandaController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<BerandaModel> berandaModelObj = BerandaModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
