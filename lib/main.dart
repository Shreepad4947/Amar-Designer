
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:amardesigner/widgets/loading.dart';
import 'package:amardesigner/Middleware/route.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyC-NDJV5cgn55J82RmXdszIC5bhor8Fxt8",
        authDomain: "amardesigner-997f3.firebaseapp.com",
        projectId: "amardesigner-997f3",
        storageBucket: "amardesigner-997f3.appspot.com",
        messagingSenderId: "882140680778",
        appId: "1:882140680778:web:9a9a74efcfa28266930cb3"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fireInit = Firebase.initializeApp();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Amar Design',
        // initialRoute: Routes.getHomeRoute(),
        getPages: Routes.routes,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: FutureBuilder(
          future: _fireInit,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Scaffold(
                body: Center(
                  child: Text('Error!\n\nTry reloading the app.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                ),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return const HomeScreen();
            }
            return const Scaffold(
              backgroundColor: Color(0xFFFAFAFA),
              body: Loading(),
            );
          },
        )
        );
  }
}





