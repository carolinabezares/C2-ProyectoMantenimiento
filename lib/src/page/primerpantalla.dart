import 'package:flutter/material.dart';

class PrimerPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: width, top: height * 0.01),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Center(
                child: SizedBox(
                  width: width * 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      'https://th.bing.com/th/id/R.f018ea9971d348290cff64b28ddb2fe1?rik=kKNKsxFrlwmpzw&riu=http%3a%2f%2fjustaboutbaked.com%2fwp-content%2fuploads%2f2015%2f05%2fReese4-e1431290031817.jpg&ehk=ZAfd4c362WYA08bCiheN%2bnLzLm0CsSvcGEWIITtsmgw%3d&risl=&pid=ImgRaw&r=0',
                    ),
                  ),
                ),
              ),
              const Text(
                'Titulo receta',
                style: TextStyle(fontSize: 23, height: 2.5),
              ),
              const Text(
                'Ingredientes',
                style: TextStyle(fontSize: 17, height: 4),
              ),
              const Text(
                'Preparación',
                style: TextStyle(fontSize: 17, height: 4),
              )
            ],
          ),
        ),
      ),
    );
  }
}
