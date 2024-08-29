import 'package:flutter/material.dart';


class VerifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image or Illustration
              Image.asset(
                'assets/img1.png', // Updated image path
                height: 200, // Adjust as needed
              ),
              SizedBox(height: 40),
              // Title Text
              Text(
                'Phone Verification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Subtitle Text
              Text(
                'We need to register your phone before getting started!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              // Phone Number Input Field
              TextField(
                decoration: InputDecoration(
                  prefixText: '+977 ', // Country code
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Phone',
                  hintText: 'Enter your phone number',
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              // Send Code Button
              SizedBox(
                width: double.infinity, // Full-width button
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: Text(
                    'Send the code',
                    style: TextStyle(fontSize: 16, color: Colors.white)
                    ,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button color
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
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
