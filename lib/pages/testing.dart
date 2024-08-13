import 'package:flutter/material.dart';
import 'package:transport_app/pages/gabes.dart';
import 'package:transport_app/pages/gafsa.dart';
import 'package:transport_app/pages/monastir.dart';
import 'package:transport_app/pages/sfax.dart';
import 'package:transport_app/pages/sousse.dart';
import 'package:transport_app/pages/tunis.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
    String? _selectedSingleOption;
  String ?_selectedListOption;
    final List<String> _dropdownItems = ["Tunis","Sousse","Sfax","Monastir",'Djerba',"Gafsa"];
  getinfo() {
  switch (_selectedListOption) {
    case  "Tunis" :
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Tunis()),
            );
      break;
    case "Djerba":
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Gabes()),
            );
      break;
    
    case "Monastir":
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Monastir()),
            );
      break;
    case "Sfax":
 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Sfax()),
            ); 
            case "Sousse"  :
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   const Sousse()),
            );
      break;
       case "Gafsa":
 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const gafsa()),
            ); 
            case "Sousse"  :
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   const Sousse()),
            );
      break;
          
    default:
      print("Pas de bus");
  }

  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // DropdownButton with a single option
            Container(
              width: 200, // Adjust the width as needed
              height: 60, // Adjust the height as needed
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                value: _selectedSingleOption,
                items: const [
                   DropdownMenuItem<String>(
                    value: 'Only Option',
                    child: Text('Tozeur'),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                
                  _selectedSingleOption = newValue;
                });
                },
                hint: const Text('Départ'),
              ),
            ),
            const SizedBox(height: 20),
            // DropdownButton with a list of options
            Container(
              width: 200, // Adjust the width as needed
              height: 60, // Adjust the height as needed
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                value: _selectedListOption,
                items: _dropdownItems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                   setState(() {
                  _selectedListOption = newValue;
                  
                });
                },
                hint: const Text('Larrivée'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
               width: 200, // Adjust the width as needed
              height: 60, // Adjust the height as needed
              // padding: const EdgeInsets.symmetric(horizontal: 16.0),
              
          
             child:  ElevatedButton(
              
                onPressed: ()
                {
              getinfo () ;
                },
                style: ButtonStyle(
                  
                  backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 103, 94, 82)),
                   padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 20.0)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
               ),
                child: const Text("Recherche", style: TextStyle(fontSize: 21, color: Colors.white),),
             ),
            )
          ],
              ),
        ),
      );
  }
  }
