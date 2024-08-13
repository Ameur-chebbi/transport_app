import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sousse extends StatefulWidget {

  const Sousse({super.key,});

  @override
  State<Sousse> createState() => _SousseState();
}

class _SousseState extends State<Sousse> {
  DateTime _value =DateTime(2000, 01, 01, 13, 00, 00) ;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SvgPicture.asset("assets/travel.svg",width: 150, height: 150,),
          SizedBox(
            width: 20,
            height: 20,
          ),
           const Text("La départ du premiere bus Tozeur-Sousse",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, style: BorderStyle.solid)),
                padding: const EdgeInsets.all(20.0),
                child: SfSlider(
                  min: DateTime(2000, 01, 01, 07, 00, 00),
                  max: DateTime(2000, 01, 01, 13, 00, 00),
                  value: _value,
                  interval: 1,
                  // stepDuration: SliderStepDuration(hours: 2),
                  showLabels: true,
                  showTicks: true,
                  dateFormat: DateFormat('HH:mm '),
                  dateIntervalType: DateIntervalType.hours,
                  onChanged: (dynamic newValue) {
                    setState(() {
                      _value = _value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: const Text(
                  " Le bus traverse ces villes pendant \n son trajet : ",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                               ),
               ),
              // SizedBox(
              //   height: 7,
              // ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: const Text(
                  " ✔08:45 gafsa \n ✔10:00 Sidi Bouzid \n ✔13:00 Sousse ",
                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                ),
              ),
              
              ]
          
          ),
        ),
      ),

    );
  }
}