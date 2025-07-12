import 'package:flutter/material.dart';
import 'package:afya_connect_project/screens/home_screen.dart';

void main() {
  runApp(AfyaConnectApp());
}

class AfyaConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AfyaConnect',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
