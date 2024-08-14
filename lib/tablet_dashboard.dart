import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/line_chart.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: LayoutBuilder(
            builder: (context, constraints) {
              bool isTablet = constraints.maxWidth < 1100;

              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Home",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: isTablet ? 16 : 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 16),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Container(
                                    height: 40,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 48, 30, 51),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 16),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.search_rounded,
                                            color: Colors.white70,
                                            size: isTablet ? 18 : 21,
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            MediaQuery.of(context).size.width <=
                                                    768
                                                ? " /"
                                                : "Search",
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: isTablet ? 12 : 14,
                                            ),
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
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        // Icons on the left side corner
                        const Row(
                          children: [
                            Icon(
                              Icons.notes_outlined,
                              size: 24,
                            ),
                            SizedBox(
                              width: 30, // Adjust spacing
                            ),
                            Icon(
                              CupertinoIcons.bell,
                              size: 24, // Adjust icon size
                            ),
                            SizedBox(
                              width: 30, // Adjust spacing
                            ),
                            Icon(
                              Icons.power_settings_new_rounded,
                              size: 24, // Adjust icon size
                            ),
                          ],
                        ),

                        const Spacer(), // Spacer to push the image container to the right side

                        // Image container on the right side corner
                        Container(
                          height: 40, // Adjust image container height
                          width: 40, // Adjust image container width
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
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
                ],
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Second section
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Flexible(
                              child: Container(
                                height: 180,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 48, 30, 51),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "ETHERUME 2.0",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Top Rating\n Projects",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Trending project and high rating \n project created by team",
                                        style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      GestureDetector(
                                        onTap: () {
                                          // Action
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: const Color.fromARGB(
                                                255, 48, 30, 51),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Learn More.", // Button label
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
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 12, right: 32, left: 32),
                        child: Flexible(
                          child: Column(
                            children: [
                              Container(
                                height: 215,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 7, 45, 1),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              BorderRadius.circular(11),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                  color: Colors.white54,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Technology behind the Blockchain",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Project #1 .",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                            fontSize: 11,
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          "See project details",
                                                          style: TextStyle(
                                                            fontSize: 11,
                                                            color:
                                                                Colors.white70,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Icon(
                                                Icons.edit,
                                                size: 21,
                                                color: Colors.white,
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
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2.0, horizontal: 5),
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
                                                const Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Technology behind the Blockchain",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Project #1 .",
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 11,
                                                            ),
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            "See project details",
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: Colors
                                                                  .white70,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.edit,
                                                  size: 21,
                                                  color: Colors.white,
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
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2.0, horizontal: 5),
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
                                                const Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Technology behind the Blockchain",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Project #1 .",
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 11,
                                                            ),
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text(
                                                            "See project details",
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: Colors
                                                                  .white70,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.edit,
                                                  size: 21,
                                                  color: Colors.white,
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
                              const SizedBox(height: 16),
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  return Container(
                                    height:
                                        200, // Adjust height for tablet screens
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 7, 45, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height:
                                              80, // Adjust height for tablet screens
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(11),
                                              topRight: Radius.circular(11),
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                              top:
                                                  12, // Adjust padding for tablet screens
                                              bottom: 4,
                                              left: 16,
                                              right: 16,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Top Creators",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        14, // Adjust font size for tablet screens
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        15), // Adjust spacing for tablet screens
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Name",
                                                      style: TextStyle(
                                                        fontSize:
                                                            10, // Adjust font size for tablet screens
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Artwork",
                                                      style: TextStyle(
                                                        fontSize:
                                                            10, // Adjust font size for tablet screens
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Rating",
                                                      style: TextStyle(
                                                        fontSize:
                                                            10, // Adjust font size for tablet screens
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top:
                                                12, // Adjust padding for tablet screens
                                            bottom: 4,
                                            left: 12,
                                            right: 12,
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height:
                                                        20, // Adjust height for tablet screens
                                                    width:
                                                        20, // Adjust width for tablet screens
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:
                                                            CachedNetworkImageProvider(
                                                          'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      width:
                                                          8), // Adjust spacing for tablet screens
                                                  const Expanded(
                                                    child: Text(
                                                      "@madrion_021",
                                                      style: TextStyle(
                                                        fontSize:
                                                            8, // Adjust font size for tablet screens
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      "9281",
                                                      style: TextStyle(
                                                        fontSize:
                                                            8, // Adjust font size for tablet screens
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child:
                                                        LinearProgressIndicator(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      minHeight:
                                                          6, // Adjust minHeight for tablet screens
                                                      value:
                                                          0.9, // Set the progress value between 0.0 and 1.0
                                                      backgroundColor: Colors
                                                          .white
                                                          .withOpacity(0.1),
                                                      valueColor:
                                                          const AlwaysStoppedAnimation<
                                                              Color>(
                                                        Colors.deepPurpleAccent,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 8),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:
                                                            CachedNetworkImageProvider(
                                                          'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          8), // Adjust spacing for tablet screens
                                                  const Expanded(
                                                    child: Text(
                                                      "@madrion_021",
                                                      style: TextStyle(
                                                        fontSize:
                                                            8, // Adjust font size for tablet screens
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      "9281",
                                                      style: TextStyle(
                                                        fontSize:
                                                            8, // Adjust font size for tablet screens
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child:
                                                        LinearProgressIndicator(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      minHeight:
                                                          6, // Adjust minHeight for tablet screens
                                                      value:
                                                          0.9, // Set the progress value between 0.0 and 1.0
                                                      backgroundColor: Colors
                                                          .white
                                                          .withOpacity(0.1),
                                                      valueColor:
                                                          const AlwaysStoppedAnimation<
                                                              Color>(
                                                        Colors.deepPurpleAccent,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:
                                                            CachedNetworkImageProvider(
                                                          'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      width:
                                                          8), // Adjust spacing for tablet screens
                                                  const Expanded(
                                                    child: Text(
                                                      "@madrion_021",
                                                      style: TextStyle(
                                                        fontSize:
                                                            8, // Adjust font size for tablet screens
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      "9281",
                                                      style: TextStyle(
                                                        fontSize:
                                                            8, // Adjust font size for tablet screens
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child:
                                                        LinearProgressIndicator(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      minHeight:
                                                          6, // Adjust minHeight for tablet screens
                                                      value:
                                                          0.9, // Set the progress value between 0.0 and 1.0
                                                      backgroundColor: Colors
                                                          .white
                                                          .withOpacity(0.1),
                                                      valueColor:
                                                          const AlwaysStoppedAnimation<
                                                              Color>(
                                                        Colors.deepPurpleAccent,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width >= 600
                              ? 20
                              : 12,
                          right: MediaQuery.of(context).size.width >= 600
                              ? 32
                              : 24,
                          left: MediaQuery.of(context).size.width >= 600
                              ? 32
                              : 24,
                          bottom: MediaQuery.of(context).size.width >= 600
                              ? 20
                              : 12,
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.white,
                          ),
                          child: const LineChartSample1(),
                        ),
                      ),
                    ],
                  )),
            ),

            // Third section
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Column(
                  children: [
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
                              height: 15,
                            ),

                            /// CALENDER
                            Container(
                              height: 230,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 16,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 35
                                              : 25,
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 75
                                              : 55,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "OCT",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >=
                                                              600
                                                          ? 14
                                                          : 10,
                                                  color: Colors.deepPurple,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 10
                                                      : 5),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                size: MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 20
                                                    : 16,
                                                color: Colors.deepPurple,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 30
                                                : 20),
                                        Text(
                                          "2024",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 14
                                                : 11,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 20
                                              : 16,
                                          color: Colors.black38,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.width >=
                                                    600
                                                ? 10
                                                : 5),
                                    Flexible(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Monday Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Mo",
                                                style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >=
                                                              600
                                                          ? 16
                                                          : 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3),
                                              Text("29",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2),
                                              Text("5",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2),
                                              Text("12",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2),
                                              Text("19",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2),
                                              Text("26",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 10
                                                  : 3),
                                          // Tuesday Column (Selected Day)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Tu",
                                                style: TextStyle(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 16
                                                      : 12, // Adjust font size
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3), // Adjust spacing
                                              Text("30",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("6",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("13",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("20",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Container(
                                                height: MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 30
                                                    : 20, // Adjust container height
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 30
                                                    : 20, // Adjust container width
                                                decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >=
                                                                600
                                                            ? 16
                                                            : 12),
                                                    bottomLeft: Radius.circular(
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >=
                                                                600
                                                            ? 16
                                                            : 12),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "27",
                                                    style: TextStyle(
                                                      fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width >=
                                                              600
                                                          ? 14
                                                          : 11, // Adjust font size
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 10
                                                  : 3), // Adjust spacing
                                          // Wednesday Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "We",
                                                style: TextStyle(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 16
                                                      : 12, // Adjust font size
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3), // Adjust spacing
                                              Text("31",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("7",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("14",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("21",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("28",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 10
                                                  : 3), // Adjust spacing
                                          // Thursday Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Th",
                                                style: TextStyle(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 16
                                                      : 12, // Adjust font size
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3), // Adjust spacing
                                              Text("1",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("8",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("15",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("22",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("29",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 10
                                                  : 3), // Adjust spacing
                                          // Friday Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Fr",
                                                style: TextStyle(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 16
                                                      : 12, // Adjust font size
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3), // Adjust spacing
                                              Text("2",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("9",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("16",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("23",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("30",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 10
                                                  : 3), // Adjust spacing
                                          // Saturday Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Sa",
                                                style: TextStyle(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 16
                                                      : 12, // Adjust font size
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3), // Adjust spacing
                                              Text("3",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("10",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("17",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("24",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("1",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 10
                                                  : 3), // Adjust spacing
                                          // Sunday Column
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Su",
                                                style: TextStyle(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 16
                                                      : 12, // Adjust font size
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 5
                                                      : 3), // Adjust spacing
                                              Text("4",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("11",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("18",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("25",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                              .size
                                                              .width >=
                                                          600
                                                      ? 3
                                                      : 2), // Adjust spacing
                                              Text("2",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >=
                                                                  600
                                                              ? 14
                                                              : 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black38)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            /// BIRTHDAY
                            Container(
                              height: 240,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.auto_awesome_rounded,
                                              color: Colors.amber,
                                              size: 24,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Today Birthday",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 20
                                                    : 16,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 30
                                                  : 20,
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 10
                                              : 5,
                                          right: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 10
                                              : 4,
                                          child: Icon(
                                            Icons.auto_awesome_rounded,
                                            color: Colors.amber,
                                            size: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 30
                                                : 24,
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
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.deepPurple,
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/Jzc2XML5/avatar-1.jpg',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 30
                                              : 20,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.deepPurple,
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/vHBqL0gC/Designer.png',
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
                                        Text(
                                          "Total",
                                          style: TextStyle(
                                            color: Colors.white24,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 18
                                                : 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 30
                                              : 20,
                                        ),
                                        Container(
                                          width: 2,
                                          height: 30,
                                          color: Colors.white38,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 12
                                                  : 8),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 15
                                              : 10,
                                        ),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 24
                                                : 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 15
                                              : 10,
                                        ),
                                        Container(
                                          width: 2,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.circular(
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 8
                                                    : 5),
                                          ),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 12
                                                  : 8),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width >=
                                                  600
                                              ? 40
                                              : 30,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width >=
                                                    600
                                                ? 12
                                                : 8),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.navigation_rounded,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 24
                                                : 18,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 15
                                                : 10,
                                          ),
                                          Text(
                                            "Birthday Wishing",
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 16
                                                  : 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            /// ANIVERSARY
                            Container(
                              height: 280,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.auto_awesome_rounded,
                                              color: Colors.amber,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 30
                                                  : 24,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 30
                                                  : 20,
                                            ),
                                            Text(
                                              "Aniversary",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 20
                                                    : 16,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 30
                                                  : 20,
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 10
                                              : 5,
                                          right: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 10
                                              : 4,
                                          child: Icon(
                                            Icons.auto_awesome_rounded,
                                            color: Colors.amber,
                                            size: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 30
                                                : 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width >=
                                                  600
                                              ? 20
                                              : 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.deepPurple,
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/Jzc2XML5/avatar-1.jpg',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 30
                                              : 20,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 80
                                              : 60,
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple
                                                .withOpacity(0.1),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.deepPurple,
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipOval(
                                              child: Image.network(
                                                'https://i.postimg.cc/vHBqL0gC/Designer.png',
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width >=
                                                  600
                                              ? 15
                                              : 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Total",
                                          style: TextStyle(
                                            color: Colors.white24,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 18
                                                : 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 30
                                              : 20,
                                        ),
                                        Container(
                                          width: 2,
                                          height: 30,
                                          color: Colors.white38,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 12
                                                  : 8),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 15
                                              : 10,
                                        ),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 24
                                                : 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  600
                                              ? 15
                                              : 10,
                                        ),
                                        Container(
                                          width: 2,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.circular(
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >=
                                                        600
                                                    ? 8
                                                    : 5),
                                          ),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 12
                                                  : 8),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width >=
                                                  600
                                              ? 40
                                              : 30,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width >=
                                                    600
                                                ? 12
                                                : 8),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.navigation_rounded,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 24
                                                : 18,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >=
                                                    600
                                                ? 15
                                                : 10,
                                          ),
                                          Text(
                                            "Aniversary Wishing",
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      600
                                                  ? 16
                                                  : 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
