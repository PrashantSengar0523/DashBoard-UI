import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pannel_3 extends StatelessWidget {
  const Pannel_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          width: MediaQuery.of(context).size.width / 5,
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.grey[100],
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
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
                          shape:
                              BoxShape.circle, // This makes the image circular
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
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                              horizontal: 6, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color:
                                            Colors.deepPurple.withOpacity(0.1),
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
                                            size: 16, color: Colors.deepPurple)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "2024",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(12),
                                                bottomLeft:
                                                    Radius.circular(12))),
                                        child: const Center(
                                          child: Text(
                                            "27",
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
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
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12))),
                                        child: const Center(
                                          child: Text(
                                            "30",
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      color: Colors.deepPurple.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color:
                                            Colors.deepPurple, // Border color
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
                                      color: Colors.deepPurple.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color:
                                            Colors.deepPurple, // Border color
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
                                    color: Colors.white38, // Divider color
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
                                        borderRadius: BorderRadius.circular(
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
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      color: Colors.deepPurple.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color:
                                            Colors.deepPurple, // Border color
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
                                      color: Colors.deepPurple.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color:
                                            Colors.deepPurple, // Border color
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
                                    color: Colors.white38, // Divider color
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
                                        borderRadius: BorderRadius.circular(
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
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
