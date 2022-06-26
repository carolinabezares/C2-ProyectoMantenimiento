import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController controller = PageController(initialPage: 0);
  final List<String> listBarOptions = ['Desayuno', 'Comida', 'Cena'];
  final List<Tab> listTabOptions = [
    Tab(
      text: 'Desayuno',
    ),
    Tab(
      text: 'Comida',
    ),
    Tab(
      text: 'Cena',
    ),
  ];
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
  }

  void getOption() async {
    setState(() {
      count = listBarOptions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: count,
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
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: listTabOptions,
                ),
              ),
              const Expanded(
                  child: TabBarView(
                children: [
                  Center(
                    child: Text("Chats Pages"),
                  ),
                  Center(
                    child: Text("Status Pages"),
                  ),
                  Center(
                    child: Text('Calls Page'),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
