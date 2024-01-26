import '../checkout_page/widgets/viewhierarchylist_item_widget.dart';
import 'controller/checkout_controller.dart';
import 'models/checkout_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({Key? key})
      : super(
          key: key,
        );

  CheckoutController controller =
      Get.put(CheckoutController(CheckoutModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 57.v),
              _buildViewHierarchyList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Opacity(
              opacity: 0.4,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.v),
                child: SizedBox(
                  width: 349.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: theme.colorScheme.onSecondaryContainer
                        .withOpacity(0.49),
                  ),
                ),
              ),
            );
          },
          itemCount: controller
              .checkoutModelObj.value.viewhierarchylistItemList.value.length,
          itemBuilder: (context, index) {
            ViewhierarchylistItemModel model = controller
                .checkoutModelObj.value.viewhierarchylistItemList.value[index];
            return ViewhierarchylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
