import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:windows_installation_simulator/pages/windows_activation/screens/reg.dart';

class ActivatiorScreenSaver extends StatefulWidget {
  const ActivatiorScreenSaver({super.key});

  @override
  State<ActivatiorScreenSaver> createState() => _ActivatiorScreenSaverState();
}

class _ActivatiorScreenSaverState extends State<ActivatiorScreenSaver> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: SystemUiOverlay.values);
    return const RegistryEditor();
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = '${now.year}/${now.month}/${now.day}';
    String formattedTime = '${now.hour}:${now.minute}';
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/Activate/images/backgroundpc.png")),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Activate/icons/thispc.png",
                          height: 60,
                        ),
                        Image.asset(
                          "assets/Activate/icons/chrome.png",
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
              color: Colors.black,
                child: Row(
                  children: [
                    Image.asset("assets/Activate/icons/WindowsIcon.png",color: Colors.white,),
                    Expanded(
                        flex: 1,
                        child: MyCustomTextField()),
                    Expanded(child: SizedBox(width: MediaQuery.of(context).size.width,)),
                    Icon(FluentIcons.battery_0_20_filled,color: Colors.white,),
                    SizedBox(width: 4,),
                    Icon(FluentIcons.wifi_1_20_filled,color: Colors.white,),
                    SizedBox(width: 4,),
                    Icon(FluentIcons.speaker_2_24_regular,color: Colors.white,),
                    SizedBox(width: 4,),
                    Text("UZB",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 4,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(formattedTime,style: TextStyle(color: Colors.white),),
                        Text(formattedDate,style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 4,),
                  ],
                )
                ),
            )
          ],
        ),
      ),
    );
  }
}
class MyCustomTextField extends StatefulWidget {
  @override
  _MyCustomTextFieldState createState() => _MyCustomTextFieldState();
}

class _MyCustomTextFieldState extends State<MyCustomTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection: TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2)),
      child: TextField(
        decoration: InputDecoration(hintText: "Qidirish",hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder()),
        style: TextStyle(color: Colors.white),
        controller: _controller,
        onChanged: (text) {
          if (text.toLowerCase() == 'reg') {
            _controller.text = 'Registry Editor';
          }
        },
        onSubmitted: (text) {
          if (text.toLowerCase() == 'registry editor') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistryEditor()),
            );
          }
        },
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


