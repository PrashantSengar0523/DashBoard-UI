import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width /
            3, // Reduce drawer width to 2/3 of screen width
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              CachedNetworkImage(
                imageUrl: 'https://i.postimg.cc/jjzczvng/Adstacks-w-o-bg.png',
                height: 60,
                width: 60,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
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
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                textAlign: TextAlign.center,
                "Abhish Mishra",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 11),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                  height: 25,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              const SizedBox(height: 20),
              buildDrawerItem(Icons.home_rounded, "Home"),
              const SizedBox(height: 15),
              buildDrawerItem(Icons.group_add_outlined, "Employees"),
              const SizedBox(height: 15),
              buildDrawerItem(Icons.list_alt_outlined, "Attendance"),
              const SizedBox(height: 15),
              buildDrawerItem(Icons.calendar_month_outlined, "Summary"),
              const SizedBox(height: 15),
              buildDrawerItem(Icons.error_outline_rounded, "Information"),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(width: 30),
                    Icon(Icons.add, size: 26),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              buildWorkspaceItem("Adstacks"),
              const SizedBox(height: 15),
              buildWorkspaceItem("Finance"),
              const SizedBox(height: 50),
              buildDrawerItem(Icons.settings_outlined, "Setting"),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: buildDrawerItem(Icons.logout_outlined, "Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDrawerItem(IconData icon, String title) {
    return Row(
      children: [
        const SizedBox(width: 50),
        Icon(icon, size: 26),
        const SizedBox(width: 50),
        Text(title, style: const TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget buildWorkspaceItem(String title) {
    return Row(
      children: [
        const SizedBox(width: 100),
        Text(title, style: const TextStyle(fontSize: 14)),
        const SizedBox(width: 20),
        const Icon(Icons.arrow_drop_down),
      ],
    );
  }
}
