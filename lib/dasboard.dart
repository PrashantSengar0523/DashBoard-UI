import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/line_chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First section
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    CachedNetworkImage(
                      imageUrl:
                          'https://i.postimg.cc/jjzczvng/Adstacks-w-o-bg.png',
                      height: 60,
                      width: 60,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.amber, // Border color
                          width: 2.0, // Border thickness
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber.shade200,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Abhish Mishra",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 11),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 234, 181, 243),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: const Center(
                        child: Text(
                          "Admin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Icon(Icons.home_rounded, size: 26),
                        SizedBox(width: 50),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Icon(Icons.group_add_outlined, size: 26),
                        SizedBox(width: 50),
                        Text("Employees", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Icon(Icons.list_alt_outlined, size: 26),
                        SizedBox(width: 50),
                        Text("Attendance", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Icon(Icons.calendar_month_outlined, size: 26),
                        SizedBox(width: 50),
                        Text("Summary", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Icon(Icons.error_outline_rounded, size: 26),
                        SizedBox(width: 50),
                        Text("Information", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 192, 221, 245)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WORKSPACES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(width: 30),
                          Icon(Icons.add, size: 26),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        SizedBox(width: 100),
                        Text("Adstacks", style: TextStyle(fontSize: 14)),
                        SizedBox(width: 20),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        SizedBox(width: 100),
                        Text("Finance", style: TextStyle(fontSize: 14)),
                        SizedBox(width: 30),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Icon(Icons.settings_outlined, size: 26),
                        SizedBox(width: 50),
                        Text("Setting", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          SizedBox(width: 50),
                          Icon(Icons.logout_outlined, size: 26),
                          SizedBox(width: 50),
                          Text("Logout", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Second section
            Container(
                width: MediaQuery.of(context).size.width / 1.6,
                color: Colors.grey[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 48, 30, 51),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 4, bottom: 4, left: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Search",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 14),
                                    ),
                                    Icon(
                                      Icons.search_rounded,
                                      color: Colors.white70,
                                      size: 21,
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 32, left: 32),
                        child: Container(
                          height: 201,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 48, 30, 51),
                                width: 0.2),
                            borderRadius: BorderRadius.circular(11),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.blue,
                                Color.fromARGB(224, 231, 94, 255),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "ETHERUME 2.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Top Rating\n Projects",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Trending project and high rating \n project created by team",
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                    height:
                                        15), // Added more spacing between text and button
                                GestureDetector(
                                  onTap: () {
                                    // Action when the button is tapped
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 140, // Increased the width
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color.fromARGB(255, 48, 30, 51),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Learn More.", // Added a label to the button
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, right: 32, left: 32),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 215,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 7, 45, 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "All Projects",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 207, 39, 28),
                                          borderRadius:
                                              BorderRadius.circular(11)),
                                      child: Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  color: Colors.white54,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Technology behind the Blockchain",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white70),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      "Project #1 .",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                    Text(
                                                      "  See project details",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color:
                                                              Colors.white70),
                                                    ),
                                                    SizedBox(
                                                      width: 100,
                                                    ),
                                                    Icon(
                                                      Icons.edit,
                                                      size: 21,
                                                      color: Colors.white,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0),
                                      child: Container(
                                        height: 45,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.white54,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Technology behind the Blockchain",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white70),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Project #1 .",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        "  See project details",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white70),
                                                      ),
                                                      SizedBox(
                                                        width: 110,
                                                      ),
                                                      Icon(
                                                        Icons.edit,
                                                        size: 16,
                                                        color: Colors.white,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0),
                                      child: Container(
                                        height: 45,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.white54,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Technology behind the Blockchain",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white70),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Project #1 .",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        "  See project details",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white70),
                                                      ),
                                                      SizedBox(
                                                        width: 110,
                                                      ),
                                                      Icon(
                                                        Icons.edit,
                                                        size: 16,
                                                        color: Colors.white,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                              width: 16), // Space between the two containers

                          Expanded(
                            child: Container(
                              height: 225,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 7, 45, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 90,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(11),
                                        topRight: Radius.circular(11),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          top: 16,
                                          bottom: 6,
                                          left: 24,
                                          right: 24),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Top Creators",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Name",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white70,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Artwork",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white70,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Rating",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white70,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16,
                                        bottom: 6,
                                        left: 16,
                                        right: 16),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape
                                                    .circle, // This makes the image circular
                                                image: DecorationImage(
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "@madrion_021",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 45),
                                            const Text(
                                              "9281",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 100),
                                            Expanded(
                                              child: LinearProgressIndicator(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                minHeight: 8,
                                                value:
                                                    0.9, // Set the progress value between 0.0 and 1.0
                                                backgroundColor: Colors.white
                                                    .withOpacity(0.1),
                                                valueColor:
                                                    const AlwaysStoppedAnimation<
                                                            Color>(
                                                        Colors
                                                            .deepPurpleAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape
                                                    .circle, // This makes the image circular
                                                image: DecorationImage(
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "@madrion_021",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 45),
                                            const Text(
                                              "9281",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 100),
                                            Expanded(
                                              child: LinearProgressIndicator(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                minHeight: 8,
                                                value:
                                                    0.9, // Set the progress value between 0.0 and 1.0
                                                backgroundColor: Colors.white
                                                    .withOpacity(0.1),
                                                valueColor:
                                                    const AlwaysStoppedAnimation<
                                                            Color>(
                                                        Colors
                                                            .deepPurpleAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape
                                                    .circle, // This makes the image circular
                                                image: DecorationImage(
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "@madrion_021",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 45),
                                            const Text(
                                              "9281",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 100),
                                            Expanded(
                                              child: LinearProgressIndicator(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                minHeight: 8,
                                                value:
                                                    0.9, // Set the progress value between 0.0 and 1.0
                                                backgroundColor: Colors.white
                                                    .withOpacity(0.1),
                                                valueColor:
                                                    const AlwaysStoppedAnimation<
                                                            Color>(
                                                        Colors
                                                            .deepPurpleAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 12, right: 24, left: 24, bottom: 12),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white,
                        ),
                        child: const LineChartSample1(),
                      ),
                    )
                  ],
                )),

            // Third section
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.notes_outlined,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(CupertinoIcons.bell),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(Icons.power_settings_new_rounded),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape
                                    .circle, // This makes the image circular
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    'https://i.postimg.cc/vHBqL0gC/Designer.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Color.fromRGBO(0, 7, 45, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Text(
                              "General 10:00 AM TO 7:00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            /// CALENDER
                            Container(
                              height: 170,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 55,
                                          decoration: BoxDecoration(
                                              color: Colors.deepPurple
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "OCT",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.deepPurple),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.arrow_drop_down,
                                                  size: 16,
                                                  color: Colors.deepPurple)
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const Text(
                                          "2024",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ),
                                        const Icon(
                                          Icons.arrow_drop_down,
                                          size: 16,
                                          color: Colors.black38,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Mon",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "29",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black38),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "19",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "26",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Tue",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "30",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black38),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "6",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "13",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "20",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: const BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  12),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12))),
                                              child: const Center(
                                                child: Text(
                                                  "27",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Wed",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "31",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black38),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "7",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "14",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "21",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "28",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Thu",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "8",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "15",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "22",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "29",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Fri",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "2",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "9",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "16",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            const Text(
                                              "23",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: const BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  12),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12))),
                                              child: const Center(
                                                child: Text(
                                                  "30",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Sat",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "10",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "17",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "24",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Sun",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "4",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "11",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "18",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "25",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "2",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            /// BIRTHDAY
                            Container(
                              height: 195,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.auto_awesome_rounded,
                                              color: Colors.amber,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Today Birthday",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: 5,
                                          right: 4,
                                          child: Icon(
                                            Icons.auto_awesome_rounded,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors
                                                  .deepPurple, // Border color
                                              width: 2, // Border width
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                8.0), // Adjust padding as needed
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/Jzc2XML5/avatar-1.jpg', // Replace with your image URL
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors
                                                  .deepPurple, // Border color
                                              width: 2, // Border width
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                8.0), // Adjust padding as needed
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/vHBqL0gC/Designer.png', // Replace with your image URL
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Total",
                                          style: TextStyle(
                                              color: Colors.white24,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 2, // Divider width
                                          height: 25, // Divider height
                                          color:
                                              Colors.white38, // Divider color
                                          margin: const EdgeInsets.symmetric(
                                              horizontal:
                                                  8.0), // Spacing around divider
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 2, // Divider width
                                          height: 25, // Divider height
                                          decoration: BoxDecoration(
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5)), // Divider color
                                          margin: const EdgeInsets.symmetric(
                                              horizontal:
                                                  8.0), // Spacing around divider
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.navigation_rounded,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Birthday Wishing",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            /// ANIVERSARY
                            Container(
                              height: 195,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.auto_awesome_rounded,
                                              color: Colors.amber,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Aniversary",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: 5,
                                          right: 4,
                                          child: Icon(
                                            Icons.auto_awesome_rounded,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors
                                                  .deepPurple, // Border color
                                              width: 2, // Border width
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                8.0), // Adjust padding as needed
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/Jzc2XML5/avatar-1.jpg', // Replace with your image URL
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors
                                                  .deepPurple, // Border color
                                              width: 2, // Border width
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                8.0), // Adjust padding as needed
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/vHBqL0gC/Designer.png', // Replace with your image URL
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors
                                                  .deepPurple, // Border color
                                              width: 2, // Border width
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                8.0), // Adjust padding as needed
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/Jzc2XML5/avatar-1.jpg', // Replace with your image URL
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Total",
                                          style: TextStyle(
                                              color: Colors.white24,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 2, // Divider width
                                          height: 25, // Divider height
                                          color:
                                              Colors.white38, // Divider color
                                          margin: const EdgeInsets.symmetric(
                                              horizontal:
                                                  8.0), // Spacing around divider
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 2, // Divider width
                                          height: 25, // Divider height
                                          decoration: BoxDecoration(
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5)), // Divider color
                                          margin: const EdgeInsets.symmetric(
                                              horizontal:
                                                  8.0), // Spacing around divider
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.navigation_rounded,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Aniversary Wishing",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
