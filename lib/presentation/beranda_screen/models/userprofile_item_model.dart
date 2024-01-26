import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.userName,
    this.userAddress,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle3318);
    userName = userName ?? Rx("Kost Harmoni");
    userAddress = userAddress ?? Rx("Jl. Taman Anggrek");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? userAddress;

  Rx<String>? id;
}
