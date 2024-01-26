import '../controller/select_room_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectRoomScreen.
///
/// This class ensures that the SelectRoomController is created when the
/// SelectRoomScreen is first loaded.
class SelectRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectRoomController());
  }
}
