import 'package:flutter/material.dart';
import 'package:windows_installation_simulator/pages/windows_activation/screens/desktop.dart';
void main(){
  runApp(const MaterialApp(
    home: ActivatiorScreenSaver(),debugShowCheckedModeBanner: false,));
}
class Runner extends StatelessWidget {
  const Runner({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        excludeHeaderSemantics: true,
        titleTextStyle: const TextStyle(color: Colors.red,fontSize: 20),
        centerTitle: true,
        title: const Text("Kompyuter sirlari"),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: 1/1,
          child: GridView.count(
            childAspectRatio: 16/12,
            crossAxisCount: 2,
            children: [
            InkWell(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (_)=>const InstallScreenSaver()));
              },
              child: Card(
              shadowColor: Colors.blue,surfaceTintColor: Colors.red,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/background.png")),
                  border: Border.all(color: Colors.blue,width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("Windows 10 O'rnatish (Sistema qilish)",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
          ),
            ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const ActivatiorScreenSaver()));
                },
                child: Card(
                  shadowColor: Colors.blue,surfaceTintColor: Colors.red,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Activate/activate.png")),
                      border: Border.all(color: Colors.blue,width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Windows bepul faollashtirish (aktivatsiya)",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                        Icon(Icons.key,color: Colors.white,size: 30,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




