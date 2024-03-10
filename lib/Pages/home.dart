// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            style: GoogleFonts.poppins(
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
                              style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
                                  'Home',
                                  style: GoogleFonts.poppins(
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
                                  'Repairs',
                                  style: GoogleFonts.poppins(
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
                                  'Prices',
                                  style: GoogleFonts.poppins(
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
                                  'Contact',
                                  style: GoogleFonts.poppins(
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
              : Column(
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
                            style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
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
        ],
      ),
    );
  }
}
