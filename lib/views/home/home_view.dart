import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  // Définition des variables pour les couleurs et le chemin de l'image
  final Color startGradientColor = Color(0xFFC5B020);
  final Color endGradientColor = Color(0xFFFFE53B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.0, 1.0],
            colors: [
              Color.fromARGB(255, 0, 0, 1),
              Color.fromARGB(255, 19, 19, 21),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              children: <Widget>[
                Card(
                  color: Color.fromRGBO(59, 59, 58, 1), // couleur du fond
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Centre les boutons dans la Row
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(
                                    109, 109, 109, 1), // couleur du fond
                                borderRadius: BorderRadius.circular(
                                    8.0), // coins arrondis
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Get.toNamed('/settings');
                                },
                                icon: Icon(Icons.settings,
                                    color: Colors
                                        .white), // icône blanche pour contraster avec le fond
                              ),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(
                                    109, 109, 109, 1), // couleur du fond
                                borderRadius: BorderRadius.circular(
                                    8.0), // coins arrondis
                              ),
                              child: IconButton(
                                                              onPressed: () {
                                  Get.snackbar("Error", "Not implemented yet",
                                      snackPosition: SnackPosition.TOP,
                                      backgroundColor: Colors.red,
                                      colorText: Colors.white);
                                },
                                icon: Icon(Icons.notifications,
                                    color: Colors
                                        .white), // icône blanche pour contraster avec le fond
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/44686652?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Hello, ${Get.parameters['name']}',
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('How are you feeling today ?',
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Age : ${Get.parameters['age']} Height : ${Get.parameters['height']} Weight : ${Get.parameters['weight']}",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    _weatherCard('Heart rate', '/heart', "85 bpm", Icons.favorite,
                        Color.fromRGBO(195, 237, 121, 1)),
                    _weatherCard('Training', '/train', "480 cal",
                        Icons.directions_run, Color.fromRGBO(227, 94, 169, 1)),
                    _weatherCard('Water balancer', '/water', "1,7 L",
                        Icons.thermostat, Color.fromRGBO(146, 185, 248, 1)),
                    _weatherCard('Sleep', '/sleep', "8 h 24 m", Icons.bed,
                        Color.fromRGBO(195, 237, 121, 1)),
                  ],
                ),
                Spacer(),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/summary');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            onPrimary: Colors.black,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.list),
                              Text('Summary'),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/stats');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            onPrimary: Colors.black,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.data_usage),
                              Text('Stats'),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/settings');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            onPrimary: Colors.black,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.person),
                              Text('Profile'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _weatherCard(
    String title, String route, String data, IconData icon, Color color) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      double width = (constraints.maxWidth - 20) / 2; // -20 for spacing between two cards in the Wrap widget.
      return Container(
        width: width,
        height: 130,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: InkWell(
            onTap: () {
              Get.toNamed(route);
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(data, style: TextStyle(fontSize: 25)),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(icon, size: 25),
                  ),
                ],
              ),
            ),
          ),
          color: color,
        ),
      );
    },
  );
}
