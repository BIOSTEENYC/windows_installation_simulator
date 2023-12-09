import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class RegistryEditor extends StatelessWidget {
  const RegistryEditor({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = '${now.year}/${now.month}/${now.day}';
    String formattedTime = '${now.hour}:${now.minute}';
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: ListView(
                children: [
                  const Row(
                    children: [
                      Text("Registry Editor"),
                      Expanded(child: SizedBox()),
                      Text("__"),
                      Icon(FluentIcons.window_16_regular),
                      Text("X"),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 2,
                      ),
                      Text("File"),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Edit"),
                      SizedBox(
                        width: 4,
                      ),
                      Text("View"),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Favorites"),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Help"),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ListView(
                              children: [
                                ListTile(
                                  title: const Text("Computer", textAlign: TextAlign.left,),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.blue,
                                          content: ListView(
                                            children: <Widget>[
                                              ListTile(
                                                title: const Text('Item 1'),
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                  // Navigate to Item 1 page
                                                },
                                              ),
                                              ListTile(
                                                title: const Text('Item 2'),
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                  // Navigate to Item 2 page
                                                },
                                              ),
                                              ListTile(
                                                title: const Text('Item 3'),
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                  // Navigate to Item 3 page
                                                },
                                              ),
                                              ListTile(
                                                title: const Text('Item 4'),
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                  // Navigate to Item 4 page
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.red,
                            ),
                          )
                        ],
                      )),
                ],
              )),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Activate/icons/WindowsIcon.png",
                      color: Colors.blue,
                    ),
                    Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                        )),
                    const Icon(
                      FluentIcons.battery_0_20_filled,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      FluentIcons.wifi_1_20_filled,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      FluentIcons.speaker_2_24_regular,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "UZB",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          formattedTime,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          formattedDate,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
