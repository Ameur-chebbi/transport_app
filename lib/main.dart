import 'package:flutter/material.dart';
// import 'package:transport_app/home.dart';
import 'package:transport_app/pages/testing.dart';
// import 'package:transport_app/pages/tunis.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) =>  LandingPage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
  //   '/second': (context) =>  Testing(),
   },
        
    
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body:
       Center(
         child: 
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/2.png', // Ensure you have your logo image in the assets folder
              width: 300,
              height: 300,
            ),
            
          ),
                 //     const SizedBox(
                 //   height: 20,
                 //  ),
         ElevatedButton(
            onPressed: ()
            {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   Testing()),
            );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 103, 94, 82)),
              // padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
           ),
            child: const Text("Commencer", style: TextStyle(fontSize: 21, color: Colors.white),),
         ),
         const SizedBox(
          height: 10,
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Chers voyageurs, veuillez noter que les horaires des bus sont disponibles \nsur notre application bon voyage !",
             style: TextStyle(fontSize: 9.5, color: Colors.black, fontWeight: FontWeight.bold),),
          )
          ],
         ),
       )
      
    );
  }
}
