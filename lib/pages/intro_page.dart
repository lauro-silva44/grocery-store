import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store_app/pages/home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  Widget _gettinStartedButton(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const HomePage();
          }))),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
        child: Text(
          'Get Started',
          style: GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80, top: 160),
          child: Image.asset('assets/images/avocado.png'),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(
            'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
                fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 24),
        Text('Fresh items everyday',
            style: GoogleFonts.notoSans(fontSize: 12, color: Colors.grey[600])),
        const Spacer(),
        _gettinStartedButton(context),
        const Spacer(),
      ]),
    );
  }
}
