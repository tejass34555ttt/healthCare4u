import 'package:flutter/material.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Request Details")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🟦 Custom Stepper Timeline
            Center(
              child: Column(
                children: [
                  _buildStep(
                    icon: Icons.check,
                    iconColor: Colors.blue,
                    title: "Request Sent Successfully",
                    date: "Dec, 23",
                    isActive: true,
                  ),
                  _buildStep(
                    icon: Icons.priority_high,
                    iconColor: Colors.yellow.shade700,
                    title: "Request Pending!",
                    isActive: true,
                  ),
                  _buildStep(
                    icon: Icons.circle,
                    iconColor: Colors.grey,
                    title: "Bed Assigned",
                    isActive: false,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // 📝 Transfer Summary Heading
            const Text(
              "Transfer Summary",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // 📋 Patient Details Card
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Patient Details:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text("Name :Fundabai CharJan Aighale"),
                  Text("Age: 22"),
                  Text("Contact:9850594302"),
                  Text("Alternate Contact:9098789324"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Step Widget
  Widget _buildStep({
    required IconData icon,
    required Color iconColor,
    required String title,
    bool isActive = false,
    String? date,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon and vertical line
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 16,
                color: icon == Icons.check ? Colors.white : Colors.black,
              ),
            ),
            Container(
              width: 2,
              height: 40,
              color: isActive ? Colors.blue : Colors.grey.shade300,
            ),
          ],
        ),
        const SizedBox(width: 10),

        // Title and optional date
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (date != null)
              Text(date, style: const TextStyle(color: Colors.blue)),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
