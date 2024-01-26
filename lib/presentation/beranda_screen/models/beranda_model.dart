import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [beranda_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BerandaModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle3318.obs,
        userName: "Kost Harmoni".obs,
        userAddress: "Jl. Taman Anggrek".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle3318189x139.obs,
        userName: "Kost Sejahtera".obs,
        userAddress: "Jl. Soekarno Hatta".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle33181.obs,
        userName: "Kost Melon".obs,
        userAddress: "Jl. Cinta Ibu".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgImage4.obs,
        userName: "Kost Putri Hartono".obs,
        userAddress: "Jl. Teratai Iby".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle33182.obs,
        userName: "Kost Brighton".obs,
        userAddress: "Jl. Bevery Hills".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle33183.obs,
        userName: "Kost Merlia".obs,
        userAddress: "Jl. Sudriman".obs)
  ]);
}
