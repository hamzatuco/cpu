  // ignore_for_file: library_private_types_in_public_api
import 'package:cpu/Pages/GoogleMap.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

const double carouselHeight = 400; // Set your desired height here
const double carouselWidth = double.infinity; // Set your desired width here
int activeIndex = 0;
const urlImages = [
  'https://i.ibb.co/fQqgXZL/redmi.jpg',
  'https://i.ibb.co/xSjh8dw/redmi1.jpg',
  'https://i.ibb.co/KDyV6kR/redmi11.jpg',
  'https://i.ibb.co/tXdYF6j/7.jpg',
  'https://i.ibb.co/cQ9Rvmj/11.jpg',
  'https://i.ibb.co/88zG1F1/auto.jpg',
  'https://i.ibb.co/3dcJG4C/auto1.jpg',
  'https://i.ibb.co/NCdpjwb/ekran.jpg',
  'https://i.ibb.co/hFz5CQ1/tv1.jpg',
  'https://i.ibb.co/ypNGmg4/tv2.jpg',
  'https://i.ibb.co/rMqG0FD/tv3.jpg',
  'https://i.ibb.co/HzKfY1b/win.jpg'
];

List<Widget> containers = [
  Padding(
    //PC content
    padding: const EdgeInsets.only(top: 30, right: 65.0, left: 65),
    child: Container(
        width: 600,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF6970AE),
            width: 2,
          ),
          color: const Color.fromARGB(0, 245, 245, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/telefon.png',
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
            ),
            Text(
              'SERVIS MOBILNIH UREĐAJA', // Replace with your phone number
              style: GoogleFonts.rubik(
                color: const Color(0xFF6970AE),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30, // Adjust width as needed
                height: 2, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF6970AE),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Zamjena baterija', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Zamjena displeja', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Uklanjanje lozinki sa zaključanih uređaja', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Sve ostale popravke/zamjene', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )),
  ),
  Padding(
    //PC content
    padding: const EdgeInsets.only(top: 30, right: 65.0, left: 65),
    child: Container(
        width: 600,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7A6CAF),
            width: 2,
          ),
          color: const Color.fromARGB(0, 245, 245, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/pc.png',
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
            ),
            Text(
              'SERVIS RAČUNARA, LAPTOPA, TABLETA I TV UREĐAJA', // Replace with your phone number
              style: GoogleFonts.rubik(
                color: const Color(0xFF7A6CAF),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30, // Adjust width as needed
                height: 2, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF7A6CAF),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Instaliranje i aktivacija OS-a', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7A6CAF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Zamjena PC komponenti', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7A6CAF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Ostale popravke', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7A6CAF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )),
  ),
  Padding(
    //PC content
    padding: const EdgeInsets.only(top: 30, right: 65.0, left: 65),
    child: Container(
        width: 600,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF1F8A87),
            width: 2,
          ),
          color: const Color.fromARGB(0, 245, 245, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/ostalo.png',
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
            ),
            Text(
              'OSTALI SERVISI I UGRADNJE', // Replace with your phone number
              style: GoogleFonts.rubik(
                color: const Color(0xFF1F8A87),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30, // Adjust width as needed
                height: 2, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF1F8A87),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Ugradnja videonadzora', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF1F8A87),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Auto multimedija', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF1F8A87),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Širok spektar ugradnje elektroničkih uređaja', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF1F8A87),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )),
  ),
];

List<Widget> containersMobile = [
  Padding(
    //PC content
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Container(
        width: 600,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF6970AE),
            width: 2,
          ),
          color: const Color.fromARGB(0, 245, 245, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/telefon.png',
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
            ),
            Text(
              textAlign: TextAlign.center,

              'SERVIS MOBILNIH UREĐAJA', // Replace with your phone number
              style: GoogleFonts.rubik(
                color: const Color(0xFF6970AE),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30, // Adjust width as needed
                height: 2, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF6970AE),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Zamjena baterija', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Zamjena displeja', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Uklanjanje lozinki sa zaključanih uređaja', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Sve ostale popravke/zamjene', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )),
  ),
  Padding(
    //PC content
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Container(
        width: 600,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7A6CAF),
            width: 2,
          ),
          color: const Color.fromARGB(0, 245, 245, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/pc.png',
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
            ),
            Text(
              textAlign: TextAlign.center,

              'SERVIS RAČUNARA, LAPTOPA, TABLETA I TV UREĐAJA', // Replace with your phone number
              style: GoogleFonts.rubik(
                color: const Color(0xFF7A6CAF),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30, // Adjust width as needed
                height: 2, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF7A6CAF),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Instaliranje i aktivacija OS-a', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7A6CAF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Zamjena PC komponenti', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7A6CAF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Ostale popravke', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7A6CAF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )),
  ),
  Padding(
    //PC content
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Container(
        width: 600,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF1F8A87),
            width: 2,
          ),
          color: const Color.fromARGB(0, 245, 245, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/ostalo.png',
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
            ),
            Text(
              textAlign: TextAlign.center,

              'OSTALI SERVISI I UGRADNJE', // Replace with your phone number
              style: GoogleFonts.rubik(
                color: const Color(0xFF1F8A87),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30, // Adjust width as needed
                height: 2, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF1F8A87),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Ugradnja videonadzora', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF1F8A87),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Auto multimedija', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF1F8A87),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                textAlign: TextAlign.center,

                'Širok spektar ugradnje elektroničkih uređaja', // Replace with your phone number
                style: GoogleFonts.rubik(
                  color: const Color(0xFF1F8A87),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )),
  ),
];

class _IndexState extends State<Index> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30,
              width: double.infinity,
              color: const Color(0xFF6970AE),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 1200) {
                    return Column(
                      //appbar mob
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Image.asset(
                            'assets/logo-bijeli.png',
                            width: 180,
                            height: 60,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.access_time,
                                color: Color(0xFF6970AE), size: 20),
                            const SizedBox(width: 5),
                            Text(
                              'Radno vrijeme: 09:00 - 17:00',
                              style: GoogleFonts.rubik(
                                color: const Color(0xFF6970AE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.phone,
                                  color: Color(0xFF6970AE), size: 20),
                              const SizedBox(width: 5),
                              Text(
                                '+387 123 123', // Replace with your phone number
                                style: GoogleFonts.rubik(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(
                      //appbar PC
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 300.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.asset(
                                'assets/logo-bijeli.png',
                                width: 180,
                                height: 60,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(Icons.phone,
                                    color: Color(0xFF6970AE), size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  '+387 123 123', // Replace with your phone number
                                  style: GoogleFonts.rubik(
                                    color: const Color(0xFF6970AE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ), // 30px spacing between phone number and opening time
                                const Icon(Icons.access_time,
                                    color: Color(0xFF6970AE), size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  'Radno vrijeme: 09:00 - 17:00',
                                  style: GoogleFonts.rubik(
                                    color: const Color(0xFF6970AE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            MediaQuery.of(context).size.width < 800
                ? Column(
                    //navbar mob
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: _showMenu
                                ? const Color(0xFF6970AE)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showMenu = !_showMenu;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: _showMenu
                                      ? Colors.transparent
                                      : const Color(0xFF6970AE),
                                  width: 1, // Adjust border width as needed
                                ),
                                borderRadius: BorderRadius.circular(
                                    20), // Add border radius for rounded corners
                              ),
                              child: Icon(
                                Icons.menu,
                                color: _showMenu
                                    ? Colors.white
                                    : const Color(
                                        0xFF6970AE), // Change icon color based on menu state
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (_showMenu)
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, bottom: 15),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              border: Border.all(
                                color: const Color(0xFF6970AE),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Početna',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Ponuda',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Pronađite nas',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Kontakt',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                    ],
                  )
                : Padding(
                    //navbar PC
                    padding: const EdgeInsets.only(bottom: 70.0),
                    child: Column(
                      children: [
                        const Divider(
                          color: Color(0xFF6970AE),
                          height: 1,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Home',
                                style: GoogleFonts.rubik(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40), // Increased spacing
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Repairs',
                                style: GoogleFonts.rubik(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40), // Increased spacing
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Prices',
                                style: GoogleFonts.rubik(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40), // Increased spacing
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Contact',
                                style: GoogleFonts.rubik(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'ŠTA NUDIMO?',
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 40, // Adjust width as needed
                height: 3, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF6970AE),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            MediaQuery.of(context).size.width < 1200
                ? Padding(
                    //mobile content
                    padding: const EdgeInsets.only(right: 15.0, left: 15),
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF6970AE),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 200, // Adjust width of animation
                              height: 200, // Adjust height of animation
                              child: Lottie.asset(
                                'assets/servis.json',
                                fit: BoxFit.cover, // Adjust fit as needed
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 25.0, left: 25, bottom: 25),
                              child: Text(
                                'Dobrodošli u naš servis elektroničkih uređaja i mobilnih telefona, Vaš pouzdani partner za sve popravke i održavanje. Smješteni u srcu Viteza, naš tim stručnjaka posvećen je pružanju vrhunskih usluga kako bi vaši uređaji bili u potpunosti funkcionalni.\n\nSpecijalizirani smo za CPU servis, pružajući dubinsko razumijevanje i stručnost u održavanju i popravci procesora vaših uređaja. Bez obzira radi li se o mobilnom telefonu, laptopu ili drugim elektroničkim uređajima, naši tehničari brzo će identificirati probleme i pružiti efikasna rješenja.\n\nPosjetite nas danas u Vitezu i povjerite nam svoje elektroničke uređaje. Vaši uređaji su u sigurnim rukama kod nas!',
                                style: GoogleFonts.rubik(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Padding(
                    //PC content
                    padding:
                        const EdgeInsets.only(top: 30, right: 65.0, left: 65),
                    child: Container(
                      width: double.infinity,
                      height: 400, // Adjust height as needed
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF6970AE),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 100.0), // Adjust right padding
                            child: SizedBox(
                              width: 350, // Adjust width of animation
                              height: 350, // Adjust height of animation
                              child: Lottie.asset(
                                'assets/servis.json',
                                fit: BoxFit.cover, // Adjust fit as needed
                              ),
                            ),
                          ),
                          const SizedBox(
                            width:
                                100, // Adjust spacing between animation and text
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Align text to the center vertically
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    'Dobrodošli u naš servis elektroničkih uređaja i mobilnih telefona, Vaš pouzdani partner za sve popravke i održavanje. Smješteni u srcu Viteza, naš tim stručnjaka posvećen je pružanju vrhunskih usluga kako bi vaši uređaji bili u potpunosti funkcionalni.',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height: 20), // Adjust spacing between text
                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    'Specijalizirani smo za CPU servis, pružajući dubinsko razumijevanje i stručnost u održavanju i popravci procesora vaših uređaja. Bez obzira radi li se o mobilnom telefonu, laptopu ili drugim elektroničkim uređajima, naši tehničari brzo će identificirati probleme i pružiti efikasna rješenja.',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height: 20), // Adjust spacing between text
                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    'Posjetite nas danas u Vitezu i povjerite nam svoje elektroničke uređaje. Vaši uređaji su u sigurnim rukama kod nas!',
                                    style: GoogleFonts.rubik(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Text(
                'ŠTA NUDIMO?',
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 40, // Adjust width as needed
                height: 3, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF6970AE),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            MediaQuery.of(context).size.width < 800
                ? Padding(
                    //PC content
                    padding: const EdgeInsets.only(top: 10),
                    child: CarouselSlider.builder(
                      itemCount: containersMobile.length,
                      itemBuilder: (context, index, realindex) {
                        final containerMobile = containersMobile[index];
                        return containerMobile;
                      },
                      options: CarouselOptions(
                        height: carouselHeight, // Set the fixed height here

                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                      ),
                    ),
                  )
                : Padding(
                    //PC content
                    padding:
                        const EdgeInsets.only(top: 30, right: 35.0, left: 35),
                    child: CarouselSlider.builder(
                      itemCount: containers.length,
                      itemBuilder: (context, index, realindex) {
                        final container = containers[index];
                        return container;
                      },
                      options: CarouselOptions(
                        height: carouselHeight, // Set the fixed height here

                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Text(
                'GALERIJA',
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 40, // Adjust width as needed
                height: 3, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF6970AE),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            MediaQuery.of(context).size.width < 1000
                ? Container(
                    width: double.infinity,
                    height: 400,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6970AE),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, right: 30, left: 30, bottom: 15),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Istražite naše najnovije radove! Pregledajte galeriju slika i otkrijte kako smo transformirali uređaje naših klijenata. Od poboljšanja performansi CPU-a do ugradnje kamera i servisa mobilnih telefona, naše slike govore više od riječi. Svaka slika priča priču o našem posvećenom radu i stručnosti našeg tima. Otkrijte inspiraciju za vaš sljedeći projekat i uvjerite se u našu sposobnost da vaše uređaje dovedemo do savršenstva. Pogledajte naše radove i dopustite nam da vaše ideje pretvorimo u stvarnost.',
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6970AE),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 150, left: 150),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Istražite naše najnovije radove! Pregledajte galeriju slika i otkrijte kako smo transformirali uređaje naših klijenata. Od poboljšanja performansi CPU-a do ugradnje kamera i servisa mobilnih telefona, naše slike govore više od riječi. Svaka slika priča priču o našem posvećenom radu i stručnosti našeg tima. Otkrijte inspiraciju za vaš sljedeći projekat i uvjerite se u našu sposobnost da vaše uređaje dovedemo do savršenstva. Pogledajte naše radove i dopustite nam da vaše ideje pretvorimo u stvarnost.',
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final isWideScreen = constraints.maxWidth > 800;

                  double carouselHeight = isWideScreen ? 700 : 400;

                  return CarouselSlider.builder(
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realindex) {
                      final urlImage = urlImages[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the value as needed
                          border: Border.all(
                            color: const Color(0xFF6970AE),
                            width: 2.0, // Outline width
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              15.0), // Adjust the value as needed
                          child: Container(
                            color: Colors.transparent, // Transparent fill color
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: GestureDetector(
                                onTap: () {
                                  _showImageDialog(context, urlImage);
                                },
                                child: buildImage(urlImage, index),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: carouselHeight, // Use the calculated height
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      onPageChanged: ((index, reason) =>
                          setState(() => activeIndex = index)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            MediaQuery.of(context).size.width < 1000
?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 60, child: Image.asset('assets/fb.png')),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Zapratite našu Facebook stranicu!',
                  style: GoogleFonts.rubik(
                    color: const Color(0xFF6970AE),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
            :
             
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 60, child: Image.asset('assets/fb.png')),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Kako biste pratili naše najnovije objave i ostali u toku s najnovijim vijestima, zapratite našu Facebook stranicu!',
                  style: GoogleFonts.rubik(
                    color: const Color(0xFF6970AE),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Text(
                'POSJETITE NAS',
                style: GoogleFonts.rubik(
                  color: const Color(0xFF6970AE),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              //custom divider
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 40, // Adjust width as needed
                height: 3, // Adjust height as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF6970AE),
                  borderRadius:
                      BorderRadius.circular(2), // Adjust radius as needed
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MediaQuery.of(context).size.width < 1350
?
 Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Posjetite nas i osigurajte besprijekoran rad svog uređaja uz našu stručnost i profesionalnu uslugu.',
                      style: GoogleFonts.rubik(
                        color: const Color(0xFF6970AE),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 400, // Adjust the height as needed
                      width: 650,
                      child: GoogleMap(),
                    ),
                  ],
                ),
              ],
            )
:

            Column(
                  mainAxisAlignment: MainAxisAlignment.center,

              children: [
                 Text(
                      textAlign: TextAlign.center,
                      'Posjetite nas i osigurajte besprijekoran rad svog uređaja uz našu stručnost i profesionalnu uslugu.',
                      style: GoogleFonts.rubik(
                        color: const Color(0xFF6970AE),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 350,
                          child: Lottie.network(
                              'https://lottie.host/8cc5dd89-c342-40a9-a349-0545458b6d4d/BUIxYU8kgh.json'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        const SizedBox(
                          height: 50,
                        ),
                        const SizedBox(
                          height: 400, // Adjust the height as needed
                          width: 650,
                          child: GoogleMap(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFF6970AE),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Image.network(
        urlImage, // Make sure urlImage is a valid image URL
        fit: BoxFit.cover,
      ),
    );
void _showImageDialog(BuildContext context, String imageUrl) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Stack(
          children: [
            Image.network(imageUrl, fit: BoxFit.fill),
            Positioned(
              top: 0,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.close_outlined,
                    color: Colors.white, size: 32),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
