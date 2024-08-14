import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'line_chart.dart';

class Pannel_2 extends StatelessWidget {
  const Pannel_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          width: MediaQuery.of(context).size.width / 1.6,
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
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
                    Flexible(
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 30, 51),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                            padding: EdgeInsets.only(
                                top: 4, bottom: 4, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ),
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
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              // Action
                            },
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 48, 30, 51),
                              ),
                              child: const Center(
                                child: Text(
                                  "Learn More.",
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
                padding: const EdgeInsets.only(top: 12, right: 32, left: 32),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
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
                                  color: const Color.fromARGB(255, 207, 39, 28),
                                  borderRadius: BorderRadius.circular(11),
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
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white70,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              children: [
                                                Text(
                                                  "Project #1 .",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  "See details",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white70,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Icon(
                                        Icons.edit,
                                        size: 18,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(11)),
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
                                                  BorderRadius.circular(10)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Technology behind the Blockchain",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
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
                                                    "See details",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white70,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Icon(
                                          Icons.edit,
                                          size: 18,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(11)),
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
                                                  BorderRadius.circular(10)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Technology behind the Blockchain",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
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
                                                    "See details",
                                                    overflow: TextOverflow.clip,
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white70,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Icon(
                                          Icons.edit,
                                          size: 18,
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
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 1,
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
                                  right: 24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Top Creators",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 25),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Name",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Artwork",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Rating",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
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
                                top: 16,
                                bottom: 6,
                                left: 16,
                                right: 15,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          "@madrion_021",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        child: Text(
                                          "9281",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          minHeight: 8,
                                          value:
                                              0.9, // Set the progress value between 0.0 and 1.0
                                          backgroundColor:
                                              Colors.white.withOpacity(0.1),
                                          valueColor:
                                              const AlwaysStoppedAnimation<
                                                  Color>(
                                            Colors.deepPurpleAccent,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          "@madrion_021",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        child: Text(
                                          "9281",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          minHeight: 8,
                                          value:
                                              0.9, // Set the progress value between 0.0 and 1.0
                                          backgroundColor:
                                              Colors.white.withOpacity(0.1),
                                          valueColor:
                                              const AlwaysStoppedAnimation<
                                                  Color>(
                                            Colors.deepPurpleAccent,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          "@madrion_021",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        child: Text(
                                          "9281",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          minHeight: 8,
                                          value:
                                              0.9, // Set the progress value between 0.0 and 1.0
                                          backgroundColor:
                                              Colors.white.withOpacity(0.1),
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
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 12, right: 24, left: 24, bottom: 12),
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
    );
  }
}
