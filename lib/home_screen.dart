import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limpieza Express'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              '¡Bienvenido a Limpieza Express! Selecciona uno de nuestros servicios:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
        
            buildServiceCard(
              context,
              'Limpieza Profunda Full Hogar',
              'Ideal para pre o post mudanzas. Limpieza y Desinfección para baños, cocina, pisos, vidrios, muros, closets y espacios comunes de su hogar.',
              'assets/limpieza_hogar.png',
            ),
            buildServiceCard(
              context,
              'Sanitización y Desinfección',
              'Entregaremos espacios 100% sanitizados y desinfectados aplicando nuestro sistema de vapor y amonio cuaternario.',
              'assets/sanitizacion.png',
            ),
            buildServiceCard(
              context,
              'Limpieza de Alfombras',
              'Para asegurar nuestra calidad, utilizamos la mejor maquinaria y los mejores productos para la limpieza y desinfección de alfombras.',
              'assets/alfombras.png',
            ),
            buildServiceCard(
              context,
              'Limpieza de Colchones',
              'Mantén tu colchón limpio y libre de ácaros con nuestros servicios profesionales de limpieza y desinfección.',
              'assets/colchones.png',
            ),
          ],
        ),
      ),
    );
  }

 
  Widget buildServiceCard(
    BuildContext context,
    String title,
    String description,
    String imagePath,
  ) {
    return GestureDetector(
      onTap: () {
        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              title: title,
              description: description,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [      
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
