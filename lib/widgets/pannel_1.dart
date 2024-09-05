import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Pannel1 extends StatelessWidget {
  const Pannel1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CachedNetworkImage(
              imageUrl: 'https://i.postimg.cc/jjzczvng/Adstacks-w-o-bg.png',
              height: 60,
              width: 60,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
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
                  imageUrl: 'https://i.postimg.cc/8kb7FCTg/profilepicture.png',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
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
                SizedBox(width: 20),
                Icon(Icons.home_rounded, size: 26),
                SizedBox(width: 50),
                Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.group_add_outlined, size: 26),
                SizedBox(width: 50),
                Text("Employees", style: TextStyle(fontSize: 15)),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.list_alt_outlined, size: 26),
                SizedBox(width: 50),
                Text("Attendance", style: TextStyle(fontSize: 15)),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.calendar_month_outlined, size: 26),
                SizedBox(width: 50),
                Text("Summary", style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 20),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "WORKSPACES",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  // SizedBox(width: 30),
                  Icon(Icons.add, size: 26),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 50),
                Text("Adstacks", style: TextStyle(fontSize: 14)),
                SizedBox(width: 20),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 50),
                Text("Finance", style: TextStyle(fontSize: 14)),
                SizedBox(width: 30),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                SizedBox(width: 20),
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
                  SizedBox(width: 20),
                  Icon(Icons.logout_outlined, size: 26),
                  SizedBox(width: 50),
                  Text("Logout", style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
