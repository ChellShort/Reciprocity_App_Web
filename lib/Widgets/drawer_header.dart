import 'package:flutter/material.dart';

class DrawerHeaderCustom extends StatelessWidget {
  final String? username;
  const DrawerHeaderCustom({super.key, this.username});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xff522258),
      ),
      child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.all(13.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30.0,
            child: Icon(
              Icons.person,
              size: 25.0,
              color: Colors.white,
            ),
          ),
        ),
        Flexible(
          child: 
              Text(
                username ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 20, fontFamily: "Fjalla", color: Colors.white),
              ),
        )
      ])),
    );
  }
}
