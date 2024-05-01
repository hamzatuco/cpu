// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, avoid_print

import 'package:cpu/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Kontakt extends StatefulWidget {
  const Kontakt({Key? key}) : super(key: key);

  @override
  _KontaktState createState() => _KontaktState();
}

const double carouselHeight = 400; // Set your desired height here
const double carouselWidth = double.infinity; // Set your desired width here

class _KontaktState extends State<Kontakt> {
  bool _showMenu = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _questionController = TextEditingController();

  void _sendMessage() {
    String name = _nameController.text;
    String email = _emailController.text;
    String question = _questionController.text;

    // Send the message logic goes here
    print("Name: $name");
    print("Email: $email");
    print("Question: $question");

    // Clear the text fields after sending
    _nameController.clear();
    _emailController.clear();
    _questionController.clear();
  }

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
              automaticallyImplyLeading:
                  false, // Set to false to remove the back button

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
                                '064 43 28 059', // Replace with your address
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  '064 43 28 059', // Replace with your address
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
                                const SizedBox(height: 15),
                                // Ponuda button

                                TextButton(
                                  // Inside your TextButton onPressed callback
                                  onPressed: () async {
                                    Navigator.pop(context, Section.Ponuda);
                                    Index otherPage =
                                        const Index(); // Create an instance of OtherPage
                                    otherPage
                                        .scrollToPonudaMob(); // Call the scrollToGalerija function from the instance
                                  },

                                  child: Text(
                                    'Ponuda',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),

                                TextButton(
                                  // Inside your TextButton onPressed callback
                                  onPressed: () async {
                                    Navigator.pop(context, Section.Galerija);
                                    Index otherPage =
                                        const Index(); // Create an instance of OtherPage
                                    otherPage
                                        .scrollToGalerijaMob(); // Call the scrollToGalerija function from the instance
                                  },

                                  child: Text(
                                    'Galerija',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 15),
                                TextButton(
                                  // Inside your TextButton onPressed callback
                                  onPressed: () async {
                                    Navigator.pop(context, Section.Mapa);
                                    Index otherPage =
                                        const Index(); // Create an instance of OtherPage
                                    otherPage
                                        .scrollToMapaMob(); // Call the scrollToGalerija function from the instance
                                  },

                                  child: Text(
                                    'Pronađite nas',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Kontakt',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
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
                              // Inside your TextButton onPressed callback
                              onPressed: () async {
                                Navigator.pop(context, Section.Ponuda);
                                Index otherPage =
                                    const Index(); // Create an instance of OtherPage
                                otherPage
                                    .scrollToPonuda(); // Call the scrollToGalerija function from the instance
                              },

                              child: Text(
                                'Ponuda',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40),
                            TextButton(
                              // Inside your TextButton onPressed callback
                              onPressed: () async {
                                Navigator.pop(context, Section.Galerija);
                                Index otherPage =
                                    const Index(); // Create an instance of OtherPage
                                otherPage
                                    .scrollToGalerija(); // Call the scrollToGalerija function from the instance
                              },

                              child: Text(
                                'Galerija',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40),
                            TextButton(
                              // Inside your TextButton onPressed callback
                              onPressed: () async {
                                Navigator.pop(context, Section.Mapa);
                                Index otherPage =
                                    const Index(); // Create an instance of OtherPage
                                otherPage
                                    .scrollToMapa(); // Call the scrollToGalerija function from the instance
                              },

                              child: Text(
                                'Pronađite nas',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF6970AE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40),
                            const SizedBox(height: 15),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Kontakt',
                                style: GoogleFonts.poppins(
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
            MediaQuery.of(context).size.width > 1000
                ? Column(
                    children: [
                      Text(
                        'KONTAKTIRAJTE NAS', // Replace with your address
                        style: GoogleFonts.poppins(
                            color: const Color(0xFF6970AE),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        //custom divider
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          width: 30, // Adjust width as needed
                          height: 3, // Adjust height as needed
                          decoration: BoxDecoration(
                            color: const Color(0xFF6970AE),
                            borderRadius: BorderRadius.circular(
                                2), // Adjust radius as needed
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF6970AE)
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 1.5),
                                    ),
                                    child: TextField(
                                      controller: _nameController,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: 'Ime i prezime',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 15.0,
                                                vertical: 10.0),
                                      ),
                                      maxLines: null,
                                      minLines: 1,
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF6970AE)
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 1.5),
                                    ),
                                    child: TextField(
                                      controller: _emailController,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: 'E-mail',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 15.0,
                                                vertical: 10.0),
                                      ),
                                      maxLines: null,
                                      minLines: 1,
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF6970AE)
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 1.5),
                                    ),
                                    child: TextField(
                                      controller: _questionController,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: 'Poruka',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 15.0,
                                                vertical: 10.0),
                                      ),
                                      maxLines: null,
                                      minLines: 1,
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  SizedBox(
                                    width: 140,
                                    height: 45,
                                    child: ElevatedButton(
                                      onPressed: _sendMessage,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF6970AE),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Text('Pošalji',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 400,
                            child: Lottie.network(
                                'https://lottie.host/91cccf9b-584c-4265-9bb4-2bb3d46e5bb3/k0LznEYbcr.json'),
                          )
                        ],
                      ),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 400,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'KONTAKTIRAJTE NAS', // Replace with your address
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF6970AE),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                //custom divider
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  width: 30, // Adjust width as needed
                                  height: 3, // Adjust height as needed
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF6970AE),
                                    borderRadius: BorderRadius.circular(
                                        2), // Adjust radius as needed
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 200,
                                child: Lottie.network(
                                  'https://lottie.host/91cccf9b-584c-4265-9bb4-2bb3d46e5bb3/k0LznEYbcr.json',
                                  animate: false, // Disable autoPlay
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF6970AE).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.transparent, width: 1.5),
                                ),
                                child: TextField(
                                  controller: _nameController,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: 'Ime i prezime',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                  ),
                                  maxLines: null,
                                  minLines: 1,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF6970AE).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.transparent, width: 1.5),
                                ),
                                child: TextField(
                                  controller: _emailController,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: 'E-mail',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                  ),
                                  maxLines: null,
                                  minLines: 1,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              Container(
                                height: 130,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF6970AE).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.transparent, width: 1.5),
                                ),
                                child: TextField(
                                  controller: _questionController,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: 'Poruka',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                  ),
                                  maxLines: null,
                                  minLines: 1,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              SizedBox(
                                width: 140,
                                height: 45,
                                child: ElevatedButton(
                                  onPressed: _sendMessage,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF6970AE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: Text('Pošalji',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            MediaQuery.of(context).size.width > 800
                ? const SizedBox(
                    height: 45,
                  )
                : const SizedBox(
                    height: 25,
                  ),
            MediaQuery.of(context).size.width > 800
                ? Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6970AE),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.pin_drop,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Ulica branilaca Starog Viteza bb. - 72251 Vitez', // Replace with your address
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.email,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    'neki@email.com', // Replace with your email
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.phone,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    '064 43 28 059', // Replace with your address
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.access_time,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Pon - Sub | 07:00 - 17:00', // Replace with your address
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: SizedBox(
                                    height: 30,
                                    child: Image.asset('assets/fb1.png'),
                                  ), // Assuming 'fb1' is your image asset
                                  onPressed: () {
                                    _launchURL(
                                        'https://www.facebook.com/profile.php?id=61556737476101'); // Mark Zuckerberg's Facebook page
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                  icon: SizedBox(
                                    height: 30,
                                    child: Image.asset('assets/ig.png'),
                                  ), // Assuming 'fb1' is your image asset
                                  onPressed: () {
                                    _launchURL(
                                        'https://www.instagram.com/cpu_servis.ba/'); // Mark Zuckerberg's Facebook page
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: SizedBox(
                                  height: 120,
                                  child: Image.asset('assets/bijelimali.png')),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, bottom: 5),
                              child: Text(
                                'Naša vizija', // Replace with your address
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 5),
                              child: Text(
                                'Često postavljena pitanja', // Replace with your address
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 5),
                              child: Text(
                                'Kontaktirajte nas', // Replace with your address
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                : Container(
                    width: double.infinity,
                    height: 520,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6970AE),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.pin_drop,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Ul. branilaca Starog Viteza bb. - 72251 Vitez', // Replace with your address
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.email,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    'neki@email.com', // Replace with your email
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.phone,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    '064 43 28 059', // Replace with your address
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.access_time,
                                      color: Colors.white, size: 25),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Pon - Sub | 07:00 - 17:00', // Replace with your address
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: SizedBox(
                                    height: 30,
                                    child: Image.asset('assets/fb1.png'),
                                  ), // Assuming 'fb1' is your image asset
                                  onPressed: () {
                                    _launchURL(
                                        'https://www.facebook.com/profile.php?id=61556737476101'); // Mark Zuckerberg's Facebook page
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                IconButton(
                                  icon: SizedBox(
                                    height: 30,
                                    child: Image.asset('assets/ig.png'),
                                  ), // Assuming 'fb1' is your image asset
                                  onPressed: () {
                                    _launchURL(
                                        'https://www.instagram.com/cpu_servis.ba/'); // Mark Zuckerberg's Facebook page
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          //custom divider
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 30, // Adjust width as needed
                            height: 2, // Adjust height as needed
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  2), // Adjust radius as needed
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: SizedBox(
                                  height: 80,
                                  child: Image.asset('assets/bijelimali.png')),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, bottom: 5),
                              child: Text(
                                'Naša vizija', // Replace with your address
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 5),
                              child: Text(
                                'Često postavljena pitanja', // Replace with your address
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 5),
                              child: Text(
                                'Kontaktirajte nas', // Replace with your address
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
            MediaQuery.of(context).size.width > 800
                ? Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Copyright © 2024 Servis | CPU Servis', // Replace with your address
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF6970AE),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Powered by | CPU / All rights reserved', // Replace with your address
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF6970AE),
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  )
                : Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 15),
                            Text(
                              'Copyright © 2024 Servis | CPU Servis', // Replace with your address
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF6970AE),
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Powered by | CPU / All rights reserved', // Replace with your address
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF6970AE),
                                fontSize: 14,
                              ),
                            ),
                          ]),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _questionController.dispose();
    super.dispose();
  }
}
