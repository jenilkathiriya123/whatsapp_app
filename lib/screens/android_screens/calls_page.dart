import 'package:flutter/material.dart';

import '../global.dart';


class CallTabScreen extends StatefulWidget {
  const CallTabScreen({Key? key}) : super(key: key);

  @override
  State<CallTabScreen> createState() => _CallTabScreenState();
}

class _CallTabScreenState extends State<CallTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: Image.asset(
                        Global.calls[i]["img"],
                        fit: BoxFit.fill,
                      ).image,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${Global.calls[i]["name"]}',
                          style: Global.nameStyle,
                        ),
                        Text(
                          '${Global.callsAndroid[i]}',
                          style: Global.subNameStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.call,
                  color: Global.appColor,
                ),
              ],
            ),
          );
        },
        itemCount: Global.calls.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Global.appColor,
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
