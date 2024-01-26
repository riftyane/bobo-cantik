import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/select_room_screen/models/select_room_model.dart';

/// A controller class for the SelectRoomScreen.
///
/// This class manages the state of the SelectRoomScreen, including the
/// current selectRoomModelObj
class SelectRoomController extends GetxController {
  Rx<SelectRoomModel> selectRoomModelObj = SelectRoomModel().obs;
}
