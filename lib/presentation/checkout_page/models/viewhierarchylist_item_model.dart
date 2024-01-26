import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
    this.image,
    this.text,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgLogoGopay1);
    text = text ?? Rx("Gopay");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? text;

  Rx<String>? id;
}
