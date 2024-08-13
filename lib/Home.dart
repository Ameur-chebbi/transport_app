// import 'package:flutter/material.dart';
// import 'package:transport_app/pages/tunis.dart';


// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//        debugShowCheckedModeBanner: false,
//       home: Scaffold(
       
//         body: Center(
//           child: DropdownExample(),
//         ),
//       ),
//     );
//   }
// }

// class DropdownExample extends StatefulWidget {
//   @override
//   _DropdownExampleState createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   String? _selectedSingleOption;
//   String? _selectedListOption;
//   final List<String> _dropdownItems = ["Tunis",'Gabès', 'Gafsa', 'Kairouan','djerba', 'Kébili',"Mahdia","Monastir","Sfax","Sidi Bouzid"," Sousse",];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // DropdownButton with a single option
//         Container(
//           width: 200, // Adjust the width as needed
//           height: 60, // Adjust the height as needed
//           padding: EdgeInsets.symmetric(horizontal: 16.0),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.blue),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: DropdownButton<String>(
//             isExpanded: true,
//             value: _selectedSingleOption,
//             items: const [
//                DropdownMenuItem<String>(
//                 value: 'Only Option',
//                 child: Text('Tozeur'),
//               ),
//             ],
//             onChanged: (String? newValue) {
//               setState(() {
//                 _selectedSingleOption = newValue;
//               });
//             },
//             hint: const Text('Départ'),
//           ),
//         ),
//         const SizedBox(height: 20),
//         // DropdownButton with a list of options
//         Container(
//           width: 200, // Adjust the width as needed
//           height: 60, // Adjust the height as needed
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.green),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: DropdownButton<String>(
//             isExpanded: true,
//             value: _selectedListOption,
//             items: _dropdownItems.map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (String? newValue) {
//               setState(() {
//                 _selectedListOption = newValue;
//               });
//             },
//             hint: const Text('Larrivée'),
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//            width: 200, // Adjust the width as needed
//           height: 60, // Adjust the height as needed
//           // padding: const EdgeInsets.symmetric(horizontal: 16.0),
          

//          child:  ElevatedButton(
          
//             onPressed: ()
//             {
//             //      Navigator.push(
//             //   context,
//             //   MaterialPageRoute(builder: (context) => Home()),
//             // );
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>Tunis(destination: _selectedListOption)));
//             },
//             style: ButtonStyle(
              
//               backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 103, 94, 82)),
//                padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 20.0)),
//             shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
//            ),
//             child: const Text("Recherche", style: TextStyle(fontSize: 21, color: Colors.white),),
//          ),
//         )
//       ],
//     );
//   }
// }
