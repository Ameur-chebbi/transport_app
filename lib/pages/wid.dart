//  Text("La premiere bus Tozeur-Tunis",style: TextStyle(fontWeight: FontWeight.w300),),
//           const Text(
//             " ✔9:45 Gafsa  ✔11:00 Sidi Bouzid ✔12:00 Kairouan",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 border:
//                     Border.all(color: Colors.black, style: BorderStyle.solid)),
//             padding: EdgeInsets.all(20.0),
//             child: SfSlider(
//               min: DateTime(2000, 01, 01, 08, 00, 00),
//               max: DateTime(2000, 01, 01, 15, 00, 00),
//               value: _value,
//               interval: 1,
//               // stepDuration: SliderStepDuration(hours: 2),
//               showLabels: true,
//               showTicks: true,
//               dateFormat: DateFormat('HH:mm '),
//               dateIntervalType: DateIntervalType.hours,
//               onChanged: (dynamic newValue) {
//                 setState(() {
//                   _value = _value;
//                 });
//               },
//             ),
//           )