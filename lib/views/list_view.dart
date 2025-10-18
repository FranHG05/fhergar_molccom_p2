import 'package:flutter/material.dart';
import '../models/item.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({Key? key}) : super(key: key);

  final List<Item> _items = [
    Item(
      id: '1',
      titulo: 'Optimus Prime',
      descripcion: 'Modelo con articulaciones y materiales variados',
      imagenPath:
          'assets/images/big-optimus-prime-multi-material-model1_medium.png',
      etiqueta: 'Juguete',
    ),
    Item(
      id: '2',
      titulo: 'Hollow Knight',
      descripcion: 'Personajes principales del juego Hollow Knight y secuela',
      imagenPath: 'assets/images/hollow_knight.png',
      etiqueta: 'Decorativo',
    ),
    Item(
      id: '3',
      titulo: 'STAR WARS',
      descripcion: 'Logo Star Wars para decoración',
      imagenPath: 'assets/images/star_wars.png',
      etiqueta: 'Decorativo',
    ),
    Item(
      id: '4',
      titulo: 'Soporte USB / SD / MicroSD',
      descripcion:
          'Soporte vertical para discos externos y tarjetas de memoria',
      imagenPath: 'assets/images/usb_holder.png',
      etiqueta: 'Útiles',
    ),
  ];

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
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];

          return Column(
            children: [
              // Tarjeta del item
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
                    // Imagen con etiqueta
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage(item.imagenPath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              item.etiqueta.toUpperCase(),
                              style: const TextStyle(
                                color: Color(0xFF4F46E5),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Contenido debajo de la imagen
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Título y descripción a la izquierda con espacio limitado
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.titulo,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item.descripcion,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          // Icono de descarga a la derecha con sombra
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEF2FF),
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.download_rounded,
                              color: Color(0xFF4F46E5),
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
