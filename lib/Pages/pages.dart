import 'package:flutter/material.dart';
import 'package:nasaapp/Pages/findnasa.dart';
import 'package:nasaapp/Pages/home.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> with TickerProviderStateMixin {
  late TabController _tabController;
  String page = "";
  List<String> pages = [
    "El planeta en el Tiempo",
    "Encuentralo en la Nasa",
    "La imagen del Dia",
    "Esto es Marte"
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  changepage(int change) {
    setState(() {
      page = pages.elementAt(change);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          title: Center(
        child: Text(page),
      )),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: AppBar(
          title: TabBar(
            controller: _tabController,
            onTap: (int index) {
              changepage(index);
            },
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.language)),
              Tab(
                icon: Icon(Icons.search_rounded),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.next_plan),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          NasaFinder(),
          HomePage(),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
