import 'package:flutter/material.dart';
import 'package:pest_detection/welcome.dart';
import 'package:camera/camera.dart';

import 'db.dart';

List<CameraDescription>? cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DatabaseHelper dbHelper = DatabaseHelper();
  await dbHelper.initializeDatabase();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detecting Diseases in Orchid Plantation and Give Solutions',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const welcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
