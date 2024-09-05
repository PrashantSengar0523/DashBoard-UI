import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/end_custom_drawer.dart';
import 'package:my_app/widgets/line_chart.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width / 1.5;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: SizedBox(
        width: drawerWidth,
        child: const CustomDrawer(), 
      ),
      endDrawer: SizedBox(
        width: drawerWidth,
        child: const EndCustomDrawer(), 
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.dashboard_rounded),
              onPressed: () {
                Scaffold.of(context).openDrawer(); 
              },
            );
          },
        ),
        title: const Text('Home'),
        actions: [
          Container(
          height: 40,
          width: MediaQuery.of(context).size.width*0.22,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12)
          ),
          child:  TextField(
      decoration: InputDecoration(
        hintText: "",
        hintStyle: const TextStyle(
          color: Colors.white70
        ),
        fillColor: const Color.fromARGB(255, 48, 30, 51),
        filled: true,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12)
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 12),
      )),
         ),
         const SizedBox(width: 15,),
          Builder(
            builder: (context) {
              return IconButton(
                icon:  Container(
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
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24,top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                      Container(
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
                              Text(
                                "ETHERUME 2.0",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.width*0.021,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Top Rating\n Projects",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.width*0.040,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Trending project and high rating \n project created by team",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: MediaQuery.of(context).size.width*0.026,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  // Action
                                },
                                child: Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width*0.30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color.fromARGB(255, 48, 30, 51),
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
                      ),
                       const SizedBox(height: 15,),
                       Container(
                        width: double.infinity,
                         decoration: BoxDecoration(
                             color: const Color.fromRGBO(0, 7, 45, 1),
                             borderRadius: BorderRadius.circular(12)),
                         child: Padding(
                           padding: const EdgeInsets.all(10),
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
                                       Expanded(
                                         child: Column(
                                           mainAxisAlignment:
                                               MainAxisAlignment.center,
                                           crossAxisAlignment:
                                               CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               "Technology behind the Blockchain",
                                               overflow: TextOverflow.ellipsis,
                                               maxLines: 1,
                                               style: TextStyle(
                                                 fontSize: MediaQuery.of(context).size.width*0.028,
                                                 fontWeight: FontWeight.bold,
                                                 color: Colors.white,
                                               ),
                                             ),
                                             const SizedBox(height: 5),
                                             Row(
                                               children: [
                                                 Text(
                                                   "Project #1 .",
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     color: Colors.black,
                                                     fontSize: MediaQuery.of(context).size.width*0.028,
                                                   ),
                                                 ),
                                                 const SizedBox(width: 5),
                                                 Text(
                                                   "See details",
                                                   overflow:
                                                       TextOverflow.ellipsis,
                                                   style: TextStyle(
                                                     fontSize: MediaQuery.of(context).size.width*0.025,
                                                     color: Colors.white,
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),
                                       ),
                                       Icon(
                                         Icons.edit,
                                         size: MediaQuery.of(context).size.width*0.045,
                                         color: Colors.white,
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               const SizedBox(
                                 height: 12,
                               ),
                               Padding(
                                 padding:
                                     const EdgeInsets.symmetric(horizontal: 8.0,),
                                 child: Container(
                                  padding: const EdgeInsets.all(6),
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
                                         Expanded(
                                           child: Column(
                                             mainAxisAlignment:
                                                 MainAxisAlignment.center,
                                             crossAxisAlignment:
                                                 CrossAxisAlignment.start,
                                             children: [
                                               Text(
                                                 "Technology behind the Blockchain",
                                                 overflow: TextOverflow.ellipsis,
                                                 maxLines: 1,
                                                 style: TextStyle(
                                                   fontSize: MediaQuery.of(context).size.width*0.027,
                                                   fontWeight: FontWeight.bold,
                                                   color: Colors.white,
                                                 ),
                                               ),
                                               const SizedBox(height: 5),
                                               Row(
                                                 children: [
                                                   Text(
                                                     "Project #1 .",
                                                     style: TextStyle(
                                                       fontWeight:
                                                           FontWeight.bold,
                                                       color: Colors.white60,
                                                       fontSize: MediaQuery.of(context).size.width*0.027,
                                                     ),
                                                   ),
                                                   const SizedBox(width: 5),
                                                   Text(
                                                     "See details",
                                                     overflow:
                                                         TextOverflow.ellipsis,
                                                     style: TextStyle(
                                                       fontSize: MediaQuery.of(context).size.width*0.027,
                                                       color: Colors.white,
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                         ),
                                         Icon(
                                           Icons.edit,
                                           size: MediaQuery.of(context).size.width*0.038,
                                           color: Colors.white,
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                               const SizedBox(
                                 height: 12,
                               ),
                               Padding(
                                 padding:
                                     const EdgeInsets.symmetric(horizontal: 6.0),
                                 child: Container(
                                  padding: const EdgeInsets.all(6),
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
                                         Expanded(
                                           child: Column(
                                             mainAxisAlignment:
                                                 MainAxisAlignment.center,
                                             crossAxisAlignment:
                                                 CrossAxisAlignment.start,
                                             children: [
                                               Text(
                                                 "Technology behind the Blockchain",
                                                 overflow: TextOverflow.ellipsis,
                                                 maxLines: 1,
                                                 style: TextStyle(
                                                   fontSize: MediaQuery.of(context).size.width*0.027,
                                                   fontWeight: FontWeight.bold,
                                                   color: Colors.white,
                                                 ),
                                               ),
                                               const SizedBox(height: 5),
                                               Row(
                                                 children: [
                                                   Text(
                                                     "Project #1 .",
                                                     style: TextStyle(
                                                       fontWeight:
                                                           FontWeight.bold,
                                                       color: Colors.white60,
                                                       fontSize: MediaQuery.of(context).size.width*0.027,
                                                     ),
                                                   ),
                                                   const SizedBox(width: 5),
                                                   Text(
                                                     "See details",
                                                     overflow: TextOverflow.clip,
                                                     style: TextStyle(
                                                       fontSize: MediaQuery.of(context).size.width*0.027,
                                                       color: Colors.white,
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                         ),
                                         Icon(
                                           Icons.edit,
                                           size: MediaQuery.of(context).size.width*0.038,
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
                       const SizedBox(height: 15),
                       Container(
                         decoration: BoxDecoration(
                           color: const Color.fromRGBO(0, 7, 45, 1),
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Column(
                           children: [
                             Container(
                               padding: const EdgeInsets.only(
                                   top: 12,
                                   left: 16,
                                   right: 16,
                                 ),
                               height: 91,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                 color: Colors.white.withOpacity(0.1),
                                 borderRadius: const BorderRadius.only(
                                   topLeft: Radius.circular(11),
                                   topRight: Radius.circular(11),
                                 ),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     "Top Creators",
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: MediaQuery.of(context).size.width*0.035,
                                       color: Colors.white,
                                     ),
                                   ),
                                   const SizedBox(height: 25),
                                   Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                     mainAxisAlignment:
                                         MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text(
                                         "Name",
                                         style: TextStyle(
                                           fontSize: MediaQuery.of(context).size.width*0.028,
                                           color: Colors.white70,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                       Text(
                                         "Artwork",
                                         style: TextStyle(
                                           fontSize: MediaQuery.of(context).size.width*0.028,
                                           color: Colors.white70,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                       Text(
                                         "Rating",
                                         style: TextStyle(
                                           fontSize: MediaQuery.of(context).size.width*0.028,
                                           color: Colors.white70,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 top: 16,
                                 bottom: 4,
                                 left: 16,
                                 right: 15,
                               ),
                               child: Column(
                                 children: [
                                   Row(
                                     children: [
                                       Container(
                                         height: 25,
                                         width: MediaQuery.of(context).size.width*0.065,
                                         decoration: const BoxDecoration(
                                           shape: BoxShape.circle,
                                           image: DecorationImage(
                                             image: CachedNetworkImageProvider(
                                               'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                                             ),
                                             fit: BoxFit.contain,
                                           ),
                                         ),
                                       ),
                                       const SizedBox(width: 10),
                                       Expanded(
                                         child: Text(
                                           "@madrion_021",
                                           style: TextStyle(
                                             fontSize: MediaQuery.of(context).size.width*0.027,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.white,
                                           ),
                                         ),
                                       ),
                                       const SizedBox(width: 8,),
                                       Expanded(
                                         child: Text(
                                           "9281",
                                           style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: MediaQuery.of(context).size.width*0.027,
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
                                         width: MediaQuery.of(context).size.width*0.065,
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
                                       Expanded(
                                         child: Text(
                                           "@madrion_021",
                                           style: TextStyle(
                                             fontSize: MediaQuery.of(context).size.width*0.027,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.white,
                                           ),
                                         ),
                                       ),
                                       const SizedBox(width: 8,),
                                       Expanded(
                                         child: Text(
                                           "9281",
                                           style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: MediaQuery.of(context).size.width*0.027,
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
                                         width: MediaQuery.of(context).size.width*0.065,
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
                                       Expanded(
                                         child: Text(
                                           "@madrion_021",
                                           style: TextStyle(
                                             fontSize: MediaQuery.of(context).size.width*0.027,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.white,
                                           ),
                                         ),
                                       ),
                                       const SizedBox(width: 8,),
                                       Expanded(
                                         child: Text(
                                           "9281",
                                           style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: MediaQuery.of(context).size.width*0.027,
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
                                   const SizedBox(height: 10,)                                  
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                        const SizedBox(height: 15,),
                        Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,
                    ),
                    child: const LineChartSample1(),
                  ),
                        const SizedBox(height: 15,),
            ],
          ),
        ),
      ),

    );

  }
}
