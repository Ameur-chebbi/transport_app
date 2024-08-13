import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class gafsa extends StatefulWidget {

  const gafsa({super.key,});

  @override
  State<gafsa> createState() => _gafsaState();
}

class _gafsaState extends State<gafsa> {
  DateTime _value =DateTime(2000, 01, 01, 07, 00, 00) ;
   DateTime _value1 =DateTime(2000, 01, 01, 12, 00, 00) ;
      DateTime _value2 =DateTime(2000, 01, 01, 18, 00, 00) ;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
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
             const Text("La premiere bus Tozeur-Gafsa",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                SizedBox(
              height: 5,
            ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black, style: BorderStyle.solid)),
                  padding: const EdgeInsets.all(20.0),
                  child: SfSlider(
                    min: DateTime(2000, 01, 01, 05, 00, 00),
                    max: DateTime(2000, 01, 01, 07, 00, 00),
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
                   padding: const EdgeInsets.all(2.0),
                   child: const Text(
                    " Le bus traverse ces villes pendant \n  son trajet : ",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                 ),
                 ),
                // SizedBox(
                //   height: 7,
                // ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: const Text(
                    " ✔ 06:30 metlaoui",
                    style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                  ),
                ),
                  const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
                  const Text("La deuxième bus Tozeur-Gafsa",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
               
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black, style: BorderStyle.solid)),
                  padding: const EdgeInsets.all(20.0),
                  child: SfSlider(
                    min: DateTime(2000, 01, 01, 10, 00, 00),
                    max: DateTime(2000, 01, 01, 12, 00, 00),
                    value: _value1,
                    interval: 1,
                    // stepDuration: SliderStepDuration(hours: 2),
                    showLabels: true,
                    showTicks: true,
                    dateFormat: DateFormat('HH:mm '),
                    dateIntervalType: DateIntervalType.hours,
                    onChanged: (dynamic newValue) {
                      setState(() {
                        _value1 = _value1;
                      });
                    },
                  ),
                ),  
                  SizedBox(
                  height: 30,
                ),
                 Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: const Text(
                    " Le bus traverse ces villes pendant \n son trajet : ",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                 ),
                 ),
                // SizedBox(
                //   height: 7,
                // ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: const Text(
                    " ✔11:30 metlaoui",
                    style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                  ),
                ),
                  const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
                const Text("La troisième bus Tozeur-Gafsa",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black, style: BorderStyle.solid)),
                  padding: const EdgeInsets.all(20.0),
                  child: SfSlider(
                    min: DateTime(2000, 01, 01, 16, 00, 00),
                    max: DateTime(2000, 01, 01, 18, 00, 00),
                    value: _value2,
                    interval: 1,
                    // stepDuration: SliderStepDuration(hours: 2),
                    showLabels: true,
                    showTicks: true,
                    dateFormat: DateFormat('HH:mm '),
                    dateIntervalType: DateIntervalType.hours,
                    onChanged: (dynamic newValue) {
                      setState(() {
                        _value2 = _value2;
                      });
                    },
                  ),
                ),
                
                 Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: const Text(
                    " Le bus traverse ces villes pendant \n son trajet : ",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                 ),
                 ),
                // SizedBox(
                //   height: 7,
                // ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: const Text(
                    " ✔17:30 metlaoui  ",
                    style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                  ),
                ),
                ]
            
            ),
          ),
        ),
      ),

    );
  }
}