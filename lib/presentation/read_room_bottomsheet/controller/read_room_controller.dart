import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/read_room_bottomsheet/models/read_room_model.dart';

/// A controller class for the ReadRoomBottomsheet.
///
/// This class manages the state of the ReadRoomBottomsheet, including the
/// current readRoomModelObj
class ReadRoomController extends GetxController {
  Rx<ReadRoomModel> readRoomModelObj = ReadRoomModel().obs;
}
