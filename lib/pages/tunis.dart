import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

class Tunis extends StatefulWidget {
  const Tunis({
    super.key,
  });

  @override
  State<Tunis> createState() => _TunisState();
}

class _TunisState extends State<Tunis> {
  // variabel
  DateTime _value = DateTime(2000, 01, 01, 15, 00, 00);
   DateTime _value2 = DateTime(2000, 01, 01, 18, 00, 00);
  DateTime _value3 = DateTime(2000, 01, 02, 04, 00, 00);
  DateTime _value4=DateTime(2000, 01, 02, 06, 00, 00);
  DateTime _value5 =DateTime(2000, 01, 02, 07, 00, 00);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
            height: 80,
            
          ),
             SvgPicture.asset("assets/travel.svg",width: 150, height: 150,),
          SizedBox(
            width: 20,
            height: 20,
          ),
            Text("La premiere bus Tozeur-Tunis",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid)),
              padding: EdgeInsets.all(20.0),
              child: SfSlider(
                min: DateTime(2000, 01, 01, 08, 00, 00),
                max: DateTime(2000, 01, 01, 15, 00, 00),
                value: _value,
                interval: 1,
                // stepDuration: SliderStepDuration(hours: 2),
                showLabels: true,
                showTicks: true,
                dateFormat: DateFormat('HH:mm'),
                dateIntervalType: DateIntervalType.hours,
                onChanged: (dynamic newValue) {
                  setState(() {
                    _value = _value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            const Text(
              " ✔9:45 Gafsa   ✔11:00 Sidi Bouzid  ✔12:00 Kairouan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
              const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
             Text("La deuxième bus Tozeur-Tunis",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
           SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid)),
              padding: EdgeInsets.all(20.0),
              child: SfSlider(
                min: DateTime(2000, 01, 01, 11, 00, 00),
                max: DateTime(2000, 01, 01, 18, 00, 00),
                value: _value2,
                interval: 1,
                // stepDuration: SliderStepDuration(hours: 2),
                showLabels: true,
                showTicks: true,
                dateFormat: DateFormat('HH:mm'),
                dateIntervalType: DateIntervalType.hours,
                onChanged: (dynamic newValue) {
                  setState(() {
                    _value2 = _value2;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
             const Text(
              " ✔12:45 Gafsa  ✔14:00 Sidi Bouzid  ✔15:00 Kairouan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
               const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
            Text("La troisième bus Tozeur-Tunis",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
           SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid)),
              padding: EdgeInsets.all(20.0),
              child: SfSlider(
                min: DateTime(2000, 01, 01, 21, 00, 00),
                max: DateTime(2000, 01, 02, 04, 00, 00),
                value: _value3,
                interval: 1,
                // stepDuration: SliderStepDuration(hours: 2),
                showLabels: true,
                showTicks: true,
                dateFormat: DateFormat('HH:mm '),
                dateIntervalType: DateIntervalType.hours,
                onChanged: (dynamic newValue) {
                  setState(() {
                    _value3 = _value3;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
             const Text(
              " ✔22:45 Gafsa  ✔00:00 Sidi Bouzid  ✔01:00 Kairouan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
              const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
            Text("La quatrième bus Tozeur-Tunis",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
           SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid)),
              padding: EdgeInsets.all(20.0),
              child: SfSlider(
                min: DateTime(2000, 01, 01, 23, 00, 00),
                max: DateTime(2000, 01, 02, 06, 00, 00),
                value: _value4,
                interval: 1,
                // stepDuration: SliderStepDuration(hours: 2),
                showLabels: true,
                showTicks: true,
                dateFormat: DateFormat('HH:mm '),
                dateIntervalType: DateIntervalType.hours,
                onChanged: (dynamic newValue) {
                  setState(() {
                    _value4 = _value4;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
             const Text(
              " ✔00:45 Gafsa  ✔01:30 Sidi Bouzid  ✔03:00 Kairouan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
              const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
             Text("La cinquième bus Tozeur-Tunis",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
           SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid)),
              padding: EdgeInsets.all(20.0),
              child: SfSlider(
                min: DateTime(2000, 01, 02, 00, 00, 00),
                max: DateTime(2000, 01, 02, 7, 00, 00),
                value: _value5,
                interval: 1,
                // stepDuration: SliderStepDuration(hours: 2),
                showLabels: true,
                showTicks: true,
                dateFormat: DateFormat('HH:mm '),
                dateIntervalType: DateIntervalType.hours,
                onChanged: (dynamic newValue) {
                  setState(() {
                    _value5 = _value5;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
         const Text(
              "✔01:45 Gafsa  ✔02:30 Sidi Bouzid  ✔04:00 Kairouan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    )
    );
  }
}
