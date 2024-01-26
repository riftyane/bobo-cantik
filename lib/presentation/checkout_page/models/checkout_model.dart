import '../../../core/app_export.dart';
import 'viewhierarchylist_item_model.dart';

/// This class defines the variables used in the [checkout_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutModel {
  Rx<List<ViewhierarchylistItemModel>> viewhierarchylistItemList = Rx([
    ViewhierarchylistItemModel(
        image: ImageConstant.imgLogoGopay1.obs, text: "Gopay".obs),
    ViewhierarchylistItemModel(
        image: ImageConstant.imgLogoDanaBlue1.obs, text: "Dana".obs)
  ]);
}
