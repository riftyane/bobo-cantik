import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/add_room_screen/models/add_room_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddRoomScreen.
///
/// This class manages the state of the AddRoomScreen, including the
/// current addRoomModelObj
class AddRoomController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController roomSpecificationsAndFacilitiesController =
      TextEditingController();

  TextEditingController rentalPriceController = TextEditingController();

  Rx<AddRoomModel> addRoomModelObj = AddRoomModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    addressController.dispose();
    roomSpecificationsAndFacilitiesController.dispose();
    rentalPriceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in addRoomModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    addRoomModelObj.value.dropdownItemList.refresh();
  }
}
