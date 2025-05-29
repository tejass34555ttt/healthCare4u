import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Bed/bed_available.dart';
import 'package:transfer_bedapp/Dashboard/admin_bed.dart';
import 'package:transfer_bedapp/Dashboard/dashboardadmin.dart';
import 'package:transfer_bedapp/Dashboard/userhome.dart';
import 'package:transfer_bedapp/Patients/TotalPatients.dart';
import 'package:transfer_bedapp/Request/assign_executivepage.dart';
import 'package:transfer_bedapp/Request/patientsrequest.dart';
import 'package:transfer_bedapp/screens/Auth/login.dart';
import 'package:transfer_bedapp/Request/assignexcutive.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Bed Transformation App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF5E72EB),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      home: Scaffold(body: LoginPage()), // renamed for clarity
    );
  }
}
