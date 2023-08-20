import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
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
                  color: Color.fromRGBO(59, 59, 58, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(109, 109, 109, 1),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Get.back();  // Go back to previous screen
                                },
                                icon: Icon(Icons.arrow_back, color: Colors.white),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(height: 15),
                        ListTile(
                          leading: Icon(Icons.person_outline, color: Colors.white),
                          title: Text('Profile', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                          onTap: () {
                            // Navigate to profile settings
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.notifications_none, color: Colors.white),
                          title: Text('Notifications', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                          onTap: () {
                            // Navigate to notification settings
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.lock_outline, color: Colors.white),
                          title: Text('Privacy & Security', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                          onTap: () {
                            // Navigate to privacy & security settings
                          },
                        ),
                        // Add more settings options as needed...
                      ],
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Logout function
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
