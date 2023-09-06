import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    bool isLeftTextSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 250, 250),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/plane-takeoff.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 8, 9, 54).withOpacity(0.9),
                    BlendMode.srcATop,
                  ),
                  child: Container(
                    width: 400,
                    height: 400,
                    color: Color.fromARGB(255, 11, 13, 54).withOpacity(0.875),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 135),
                        Stack(children: [
                          Transform(
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..rotateX(0.3),
                            child: const Text(
                              "Guzo",
                              style: TextStyle(
                                fontSize: 85,
                                color: Color.fromARGB(255, 255, 215, 0),
                                fontFamily: "Engagement",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 5,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(255, 36, 34, 34),
                                    offset: Offset(2, 2),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 2,
                            right: 0,
                            bottom: 8,
                            child: Text(
                              "Go Smart | Spend Less",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 6,
                                  color: Color.fromARGB(255, 242, 238, 198),
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Positioned(
                              left: 106,
                              right: 0,
                              bottom: 4,
                              child: Text(
                                "GO",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 255, 215, 0),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  shadows: [
                                    Shadow(
                                      color: Color.fromARGB(255, 36, 34, 34),
                                      offset: Offset(2, 2),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ))
                        ]),
                        const SizedBox(width: 47),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(185, 255, 255, 255),
                              width: 3.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                // Add your desired functionality here
                              },
                              child: const Icon(
                                Icons.notifications,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isLeftTextSelected
                                      ? Color.fromARGB(255, 254, 255, 255)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isLeftTextSelected = true;
                                    });
                                  },
                                  child:  Text(
                                    "Return",
                                    style: TextStyle(
                                        color: !isLeftTextSelected
                                            ? Color.fromARGB(255, 254, 255, 255)
                                            :Color.fromARGB(255, 68, 58, 97),
                                        fontSize: 16,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                 Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: !isLeftTextSelected
                                      ? Color.fromARGB(255, 254, 255, 255)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isLeftTextSelected = false;
                                    });
                                  },
                                  child:  Text(
                                    "One-Way",
                                    style: TextStyle(
                                        color: isLeftTextSelected
                                            ? Color.fromARGB(255, 254, 255, 255)
                                            : Color.fromARGB(255, 68, 58, 97),
                                        fontSize: 16,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(
                            child: Center(
                          child: Text(
                            "From",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontFamily: "Poppins"),
                          ),
                        )),
                        SizedBox(width: 60),
                        Expanded(
                            child: Center(
                          child: Text(
                            "To",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontFamily: "Poppins"),
                          ),
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "ADD",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    fontFamily: "Poppins",
                                  ),
                                ))),
                        Center(
                            child: Container(
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child: const Icon(
                            Icons.connecting_airports,
                            color: Color.fromARGB(255, 79, 77, 77),
                          ),
                        )),
                        const SizedBox(width: 25),
                        Expanded(
                            child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Select Destination",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontFamily: "Poppins"),
                          ),
                        ))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: const [
                            SizedBox(width: 35),
                            Text(
                              "Addis Ababa",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            const SizedBox(width: 30),
                            Text(
                              "Bole International Airport",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontFamily: "Poppins",
                                  fontSize: 7),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ]),

            ],
          ),
        ),
        // Positioned(
        //   left: 0,
        //   right: 0,
        //   bottom: 0,
        //   child: Container(
        //       height: 50,
        //       color: Color.fromARGB(255, 255, 255, 255),
        //       child: Padding(
        //         padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        //         child: Stack(children: [
        //           Row(
        //             children: [
        //               Expanded(
        //                 child: IconButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   icon: Icon(Icons.search),
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //               Expanded(
        //                 child: IconButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   icon: Icon(Icons.cases_outlined),
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //               // const SizedBox(width: 50),
        //               Expanded(
        //                 child: IconButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   icon: Icon(Icons.notifications),
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //               Expanded(
        //                 child: IconButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   icon: Icon(Icons.settings),
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ]),
        //       )),
        // ),
      ]),
    );
  }
}
