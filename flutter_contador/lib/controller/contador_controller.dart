import 'package:get/get.dart';

class ContadorController extends GetxController {
  var contador = 0.obs;

  void incrementar() {
    contador++;
  }

  void decrementar() {
    if (contador > 0) {
      contador--;
    }
  }
}
