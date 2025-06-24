import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _HomeState();
}

class _HomeState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Bagian atas
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "CHEFIO",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 40),
                  Image.asset(
                    "images/loading.png",
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "All your favorites",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Discover the best home-style recipes\nwith step-by-step guides, anytime you crave,\nright at your fingertips",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(137, 0, 0, 0),
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),

            // Bagian bawah: Tombol Get Started
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 82, 140), // pink
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
        // Pindah ke SignIn page
        Navigator.pushNamed(context, '/signin');
                  },
                  child: const Text(
                    "GET STARTED",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
