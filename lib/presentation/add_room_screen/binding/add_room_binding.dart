import '../controller/add_room_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddRoomScreen.
///
/// This class ensures that the AddRoomController is created when the
/// AddRoomScreen is first loaded.
class AddRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddRoomController());
  }
}
