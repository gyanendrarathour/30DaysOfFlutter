import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?k=20&m=1300972574&s=170667a&w=0&h=gqOEm96x85QEVJxkgdwbSpmCG1c6XS_l-9amLtuIjFE=';
    String otherImageUrl =
        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png';

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text('Demo Name'),
                accountEmail: const Text('demo@mail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                otherAccountsPictures: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white24,
                    backgroundImage: NetworkImage(otherImageUrl),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white70,
                  )
                ],
              )),
          const ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              'Home',
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              'Profile',
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              'Email',
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.phone),
            title: Text(
              'Phone Number',
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
