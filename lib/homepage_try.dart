import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mi Espacio'),
          //centerTitle: true,
          leading: IconButton(
              onPressed: () {
                print('Hello');
              },
              icon: Icon(Icons.menu)),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_active_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          //backgroundColor: Colors.purpleAccent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xFFB235B4E), Color(0xFFBDDC9A3)],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Contacto'),
              Tab(icon: Icon(Icons.assignment_ind_rounded), text: 'RFC'),
              Tab(icon: Icon(Icons.markunread_mailbox_rounded), text: 'Buzón'),
            ],
          ),
          elevation: 20,
          titleSpacing: 25,
        ),
        body: TabBarView(
          children: [
            buildPage(),
            buildPage(),
            buildPage(),
          ],
        ),
      ),
    );
  }

  Widget buildPage() => Center(
        child: ListWheelScrollView(
          //padding: EdgeInsets.all(16),
          itemExtent: 250,
          physics: FixedExtentScrollPhysics(),
          //perspective: 0.009,
          diameterRatio: 0.8,
          children: [
            //Container(
            //  height: 100,
            //  width: 175,
            //  decoration: BoxDecoration(
            //    image: DecorationImage(
            //      image: AssetImage("assets/images/logo_sat_movil.png"),
            //      //fit: BoxFit.cover,
            //    ),
            //  ),
            //),
            //Center(
            //  child: Text('Bienvenido Fulanito Merenganito',
            //      style: TextStyle(fontSize: 30)),
            //),
            buildCard(0),
            buildCard(1),
            buildCard(2),
            buildCard(3),
            buildCard(4),
            buildCard(5),
            buildCard(6),
            buildCard(7),
            buildCard(8),
            buildCard(9),
            buildCard(10),
            buildCard(11),
          ],
        ),
      );

  Widget buildCard(int index) => Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        width: double.infinity,
        //height: 45,
        decoration: BoxDecoration(
            color: Color(0xFFB235B4E),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
          child:
              Text('Servicio/tramite # $index', style: TextStyle(fontSize: 30)),
        ),
      );
}
