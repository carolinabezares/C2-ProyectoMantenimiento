import 'package:flutter/material.dart';

class PrimerPantalla extends StatelessWidget {
  String recipeName = 'Titulo de receta';
  static const String ingredientsTittle = 'Ingredientes';
  static const String preparationTittle = 'Preparacion';
  String ingredients = """
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper elit in magna finibus, eu venenatis lacus maximus. Aliquam varius tristique ligula, 
          quis pharetra tellus faucibus in. Phasellus ultrices lectus ac massa venenatis gravida. Suspendisse bibendum mauris massa, eu facilisis tellus faucibus ac.
          Phasellus pharetra auctor nisi in finibus. Praesent ut ultricies odio. Donec elit massa, congue et ipsum a, dapibus iaculis dolor. Donec efficitur tortor tortor,
          vel dapibus tellus semper non. Donec at diam eget massa viverra varius. Etiam efficitur laoreet libero, sed facilisis ipsum pharetra quis. Integer aliquet quam ante,
          vitae congue ante faucibus in. Cras vestibulum mauris eget neque lacinia, sed rutrum lacus mollis. Morbi porta laoreet rhoncus. Vivamus ultricies leo id erat vulputate,
          non imperdiet erat tempus. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
          """;
  String preparation = """
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper elit in magna finibus, eu venenatis lacus maximus. Aliquam varius tristique ligula,
  quis pharetra tellus faucibus in. Phasellus ultrices lectus ac massa venenatis gravida. Suspendisse bibendum mauris massa, eu facilisis tellus faucibus ac.
  Phasellus pharetra auctor nisi in finibus. Praesent ut ultricies odio. Donec elit massa, congue et ipsum a, dapibus iaculis dolor. Donec efficitur tortor tortor,
  vel dapibus tellus semper non. Donec at diam eget massa viverra varius. Etiam efficitur laoreet libero, sed facilisis ipsum pharetra quis. Integer aliquet quam ante,
  vitae congue ante faucibus in. Cras vestibulum mauris eget neque lacinia, sed rutrum lacus mollis. Morbi porta laoreet rhoncus. Vivamus ultricies leo id erat
  vulputate, non imperdiet erat tempus. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
""";
  String imageLink =
      'https://th.bing.com/th/id/R.f018ea9971d348290cff64b28ddb2fe1?rik=kKNKsxFrlwmpzw&riu=http%3a%2f%2fjustaboutbaked.com%2fwp-content%2fuploads%2f2015%2f05%2fReese4-e1431290031817.jpg&ehk=ZAfd4c362WYA08bCiheN%2bnLzLm0CsSvcGEWIITtsmgw%3d&risl=&pid=ImgRaw&r=0';
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
                    child: Image.network(imageLink),
                  ),
                ),
              ),
              Text(
                recipeName,
                style: TextStyle(fontSize: 23, height: 2.5),
              ),
              Card(
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: const Text(
                        ingredientsTittle,
                        style: TextStyle(fontSize: 17, height: 4),
                      ),
                      subtitle: Text(ingredients),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: const Text(
                        preparationTittle,
                        style: TextStyle(fontSize: 17, height: 4),
                      ),
                      subtitle: Text(preparation),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
