import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.white, size: 32),
        title: const Text(
          "Modelos 3D",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF4F46E5),
        elevation: 2,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Caja principal del modelo
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Imagen
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/big-optimus-prime-multi-material-model1_medium.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Texto descriptivo
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: const Text(
                      'Modelo de Optimus Prime en múltiples materiales',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  // Enlace de descarga alineado a la derecha con margen inferior
                  Container(
                    padding: const EdgeInsets.only(right: 12, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Descargar',
                          style: TextStyle(
                            color: Color(0xFF4F46E5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Espaciador inferior
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
