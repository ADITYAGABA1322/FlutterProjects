import 'package:flutter/material.dart';

void main() {
  runApp(const SnapchatLoginApp());
}

class SnapchatLoginApp extends StatelessWidget {
  const SnapchatLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snapchat Login',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false, // Add this line
      home: const SnapchatLoginScreen(),
    );
  }
}




class SnapchatLoginScreen extends StatelessWidget {
  const SnapchatLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFC00), // Set the background color to #fffc00
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0, -20), // Adjust the offset as needed
              child: Image.asset('assets/images/snapchat.jpg',
                  width: 1800, height: 140),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(0, 280), // Offset for Login button
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement login functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(83, 43),
                    ),
                    child: const Text('Login',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(width: 20),
                Transform.translate(
                  offset: const Offset(0, 280), // Offset for Signup button
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement signup functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(60, 40),
                    ),
                    child: const Text('Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


