import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLeftTextSelected = true;

  List<Map<String, dynamic>> iconDataList = [
    {'icon': Icons.man, 'number': 1, 'size': 24.0},
    {'icon': Icons.man, 'number': 0, 'size': 20.0},
    {'icon': Icons.child_care, 'number': 0, 'size': 18.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 237, 237),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
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
                                  child: Text(
                                    "Return",
                                    style: TextStyle(
                                        color: !isLeftTextSelected
                                            ? Color.fromARGB(255, 254, 255, 255)
                                            : Color.fromARGB(255, 68, 58, 97),
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
                                  child: Text(
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
                            SizedBox(width: 30),
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 116,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 238, 238),
                        border: Border(
                          right: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Departure Date",
                              style: TextStyle(
                                color: Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const SizedBox(width: 15),
                                  const SizedBox(
                                    child: Text(
                                      "25",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 1, 36, 96),
                                          fontSize: 50,
                                          fontFamily: "Poppins"),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Apr",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 20,
                                            letterSpacing: 1),
                                      ),
                                      Text(
                                        "Tuesday",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 116,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 238, 238),
                        border: Border(
                          right: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Return Date",
                              style: TextStyle(
                                color: Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const SizedBox(width: 15),
                                  const SizedBox(
                                    child: Text(
                                      "10",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 1, 36, 96),
                                          fontSize: 50,
                                          fontFamily: "Poppins"),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "May",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 20,
                                            letterSpacing: 1),
                                      ),
                                      Text(
                                        "Wednesday",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                            fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 238, 238),
                        border: Border(
                          right: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Cabin Class",
                              style: TextStyle(
                                color: Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                final snackBar = SnackBar(
                                  content: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Cabin Class",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Poppins',
                                                fontSize: 20),
                                          ),
                                          SizedBox(width: 169),
                                          Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Text(
                                            "Economy",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color:
                                            Color.fromARGB(255, 141, 136, 136),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Bussiness",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color:
                                            Color.fromARGB(255, 141, 136, 136),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "First",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color:
                                            Color.fromARGB(255, 141, 136, 136),
                                      ),
                                      const SizedBox(height: 5),
                                    ],
                                  ),
                                  backgroundColor: Colors.white,
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: Text(
                                "Economy",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 241, 238, 238),
                        border: Border(
                          right: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 187, 184, 184),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Passengers",
                              style: TextStyle(
                                color: Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Row(
                              children: List.generate(
                                iconDataList.length,
                                (index) => Row(
                                  children: [
                                    Icon(
                                      iconDataList[index]['icon'],
                                      size: iconDataList[index]['size'],
                                    ),
                                    SizedBox(
                                        width:
                                            5), // Adjust the spacing between the icon and the number
                                    Text(
                                      '${iconDataList[index]['number']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(width: 15),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Container(
                width: 320,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(16.0)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 235, 187, 64)),
                  ),
                  child: const Text(
                    'Search Flights',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 35, 34, 34),
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 90),
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border(
                      top: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 223, 221, 221)))),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBottomBarItem('Search', Icons.search, () {
                    // Handle home icon click
                  }),
                  _buildBottomBarItem('Booking', Icons.business_center, () {
                    // Handle search icon click
                  }),
                  _buildBottomBarItem('Notifications', Icons.notifications, () {
                    // Handle notifications icon click
                  }),
                  _buildBottomBarItem('Setting', Icons.settings, () {
                    // Handle profile icon click
                  }),
                ],
              ),
            )),
      ]),
    );
  }
}

Widget _buildBottomBarItem(String label, IconData icon, Function() onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Color.fromARGB(255, 131, 129, 129),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey[700]),
        ),
      ],
    ),
  );
}
