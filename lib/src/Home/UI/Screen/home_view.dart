import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  final PageController controller = PageController(initialPage: 0);
  final List<String> listBarOptions = [
    'Desayuno',
    'Comida',
    'Merienda',
    'Cena',
    'Postres',
    'Ingredientes'
  ];

  final List<String> listRecipeOptions = [
    'XXXX',
    'XXXX',
    'XXXX',
    'XXXX',
    'XXXX',
    'XXXX',
    'XXXX',
    'XXXX',
  ];

  final List<String> listTextRecipeOptions = [
    'Texto de la receta',
    'Texto de la receta',
    'Texto de la receta',
    'Texto de la receta',
    'Texto de la receta',
    'Texto de la receta',
    'Texto de la receta',
    'Texto de la receta',
  ];

  final List<String> listRecipeImages = [
    'http://del.h-cdn.co/assets/16/04/3200x1800/hd-aspect-1453934758-chicken-bacon-spaghetti-delish.jpg'
  ];
  final List<Tab> listTabOptions = [];
  final List<ListView> listCardOptions = [];

  int count = 0;
  int actual = 0;

  @override
  void initState() {
    super.initState();
    getOption();
    controller.addListener(() {
      if (controller.page!.round() != actual) {
        setState(() {
          actual = controller.page!.round();
        });
      }
    });
    setState(() {
      for (var element in listBarOptions) {
        listTabOptions.add(
          Tab(
            child: Text(
              element,
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      }
    });
    setState(() {
      for (var i = 0; i < listTabOptions.length; i++) {
        listCardOptions.add(
          ListView(
            children: getCards(),
          ),
        );
      }
    });
  }

  List<Card> getCards() {
    List<Card> cardsRecipe = [];
    for (var element in listRecipeOptions) {
      cardsRecipe.add(
        Card(
          // Con esta propiedad modificamos la forma de nuestro card
          // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          // Con esta propiedad agregamos margen a nuestro Card
          // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
          margin: EdgeInsets.all(15),

          // Con esta propiedad agregamos elevación a nuestro card
          // La sombra que tiene el Card aumentará
          elevation: 10,

          // La propiedad child anida un widget en su interior
          // Usamos columna para ordenar un ListTile y una fila con botones
          child: Row(
            children: <Widget>[
              // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
              Flexible(
                child: Text(element),
              ),
              SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(listRecipeImages[0])),
              Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    listTextRecipeOptions[0],
                  ))
            ],
          ),
        ),
      );
    }
    return cardsRecipe;
  }

  void getOption() async {
    setState(() {
      count = listBarOptions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    TabController tabController = TabController(length: count, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                Text("Recetas"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                )
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange),
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 30),
                  tabs: listTabOptions,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: listCardOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
