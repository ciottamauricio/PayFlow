import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError)
          return Material(
            child: Center(
              child: Text("Não foi possível inicializar o Firebase."),
            ),
          );
        else if (snapshot.connectionState == ConnectionState.done)
          return AppWidget();
        else
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
      },
    );
  }
}
