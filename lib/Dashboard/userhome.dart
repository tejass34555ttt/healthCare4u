import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Patients/detailform.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // For responsive sizing

    return Scaffold(
      /* appBar: const CustomAppBar(title: 'Dashboard'),*/
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // 🖼️ Banner Image
              Container(
                width: 350,
                height: 100, // 20% of screen height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/bablu.jpg',
                    ), // replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 150),

              // 🔳 Square Button
              Center(
                child: SizedBox(
                  width: size.width * 0.4, // 40% of screen width
                  height: size.width * 0.4,
                  child: SizedBox(
                    width: 150,
                    height: 150, // make it square
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientDetailForm(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFCACAEB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/click.jpg', // your icon image
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Transfer Bed',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
