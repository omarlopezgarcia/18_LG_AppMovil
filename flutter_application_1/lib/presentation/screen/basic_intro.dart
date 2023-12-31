import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screen/clickButton.dart';

class BasicIntro extends StatelessWidget {
  const BasicIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 199, 206, 229),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('INSTITUTO',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text('VALLE GRANDE',
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromRGBO(22, 53, 156, 1),
                    fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: Text('Perfeccionamos tu talento',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(243, 114, 35, 1),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => buttonClick()),
                );
              },
              color: const Color.fromRGBO(25, 118, 210, 1),
              textColor: Colors.white,
              padding: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text('Empieza ahora...'),
            )
          ],
        )));
  }
}
