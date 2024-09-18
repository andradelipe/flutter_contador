import 'package:flutter/material.dart';
import 'package:flutter_count/controller/contador_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ContadorController contadorController = Get.put(ContadorController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador com GetX'),
      ),
      body: Center(
        child: Obx(() => Text(
              'Contador: ${contadorController.contador}',
              style: const TextStyle(fontSize: 24),
            )),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: contadorController.incrementar,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: contadorController.decrementar,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
