import '../controller/beranda_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BerandaScreen.
///
/// This class ensures that the BerandaController is created when the
/// BerandaScreen is first loaded.
class BerandaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BerandaController());
  }
}
