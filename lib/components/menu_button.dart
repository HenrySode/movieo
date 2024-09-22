import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert), // Three dots icon
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'logout',
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 20,
                      color: Colors.green[800],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Share'),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 20,
                      color: Colors.red[800],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Logout'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
