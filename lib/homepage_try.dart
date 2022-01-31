import 'package:flutter/material.dart';
import 'package:flutter_home_try/show_image_from_listview.dart';

class CardItem {
  final Icon satIcon;
  final String title;

  const CardItem({
    required this.satIcon,
    required this.title,
  });
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<MyTabs> _tabs = [
    new MyTabs(title: "lamc2402@gmail.com", color: Colors.green),
    new MyTabs(title: "MOCL910224SB2", color: Colors.red[200]),
    new MyTabs(title: "Buzón activo", color: Colors.indigo[200])
  ];

  late MyTabs _myHandler;
  late TabController _controller;
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
    _myHandler = _tabs[0];
    _controller.addListener(_handleSelected);
  }

  void _handleSelected() {
    setState(() {
      _myHandler = _tabs[_controller.index];
    });
  }

  List<CardItem> items0 = [
    const CardItem(
      satIcon: Icon(Icons.qr_code_scanner, size: 45, color: Colors.white),
      title: 'Verificador de códigos',
    ),
    const CardItem(
      satIcon: Icon(Icons.smart_screen, size: 45, color: Colors.white),
      title: 'Tutoriales',
    ),
    const CardItem(
      satIcon: Icon(Icons.campaign_rounded, size: 45, color: Colors.white),
      title: 'Noticias',
    ),
    const CardItem(
      satIcon: Icon(Icons.assessment_rounded, size: 45, color: Colors.white),
      title: 'Indicadores',
    ),
    const CardItem(
      satIcon: Icon(Icons.calendar_view_month, size: 45, color: Colors.white),
      title: 'Calendario fiscal',
    ),
    const CardItem(
      satIcon: Icon(Icons.qr_code_rounded, size: 45, color: Colors.white),
      title: 'e.firma portable',
    ),
  ];

  List<CardItem> items1 = [
    const CardItem(
      satIcon: Icon(Icons.star_rounded, size: 45, color: Colors.white),
      title: 'Valorar',
    ),
    const CardItem(
      satIcon: Icon(Icons.article, size: 45, color: Colors.white),
      title: 'Acerca de',
    ),
    const CardItem(
      satIcon: Icon(Icons.apps, size: 45, color: Colors.white),
      title: 'Otras aplicaciones',
    ),
    const CardItem(
      satIcon: Icon(Icons.event, size: 45, color: Colors.white),
      title: 'Citas',
    ),
    const CardItem(
      satIcon: Icon(Icons.grading, size: 45, color: Colors.white),
      title: 'Inscripción al RFC',
    ),
    const CardItem(
      satIcon: Icon(Icons.help, size: 45, color: Colors.white),
      title: 'Preguntas frecuentes',
    ),
  ];

  List<CardItem> items2 = [
    const CardItem(
      satIcon: Icon(Icons.markunread_mailbox_outlined,
          size: 45, color: Colors.white),
      title: 'Mensajes',
    ),
    const CardItem(
      satIcon: Icon(Icons.chat_bubble_outline, size: 45, color: Colors.white),
      title: 'Chat uno a uno',
    ),
    const CardItem(
      satIcon: Icon(Icons.call, size: 45, color: Colors.white),
      title: 'MarcaSAT',
    ),
    const CardItem(
      satIcon: Icon(Icons.exit_to_app, size: 45, color: Colors.white),
      title: 'Cerrar sesión',
    ),
    const CardItem(
      satIcon: Icon(Icons.padding, size: 45, color: Colors.white),
      title: 'Por definir',
    ),
    const CardItem(
      satIcon: Icon(Icons.padding, size: 45, color: Colors.white),
      title: 'Por definir',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_myHandler.title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.red)),
        backgroundColor: _myHandler.color,
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
        //flexibleSpace: Container(
        //  decoration: BoxDecoration(
        //      gradient: LinearGradient(
        //    colors: [Color(0xFFB235B4E), Color(0xFFBDDC9A3)],
        //    begin: Alignment.bottomRight,
        //    end: Alignment.topLeft,
        //  )),
        //),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.red,
          indicatorWeight: 4,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Contacto'),
            Tab(icon: Icon(Icons.assignment_ind_rounded), text: 'RFC'),
            Tab(icon: Icon(Icons.markunread_mailbox_rounded), text: 'Buzón'),
          ],
        ),
        elevation: 20,
        titleSpacing: 2,
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          buildPage(),
          buildPage(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildPage() => SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                width: double.infinity,
                height: 175,
                decoration: BoxDecoration(
                    color: Colors.tealAccent[400],
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        //color: Colors.yellow,
                        height: 100,
                        width: 160,
                        child: Image.asset('assets/images/logo_sat_movil.png'),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text('Bienvenid@ Nombre del Usuario logeado',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child:
                            Text('Mi espacio', style: TextStyle(fontSize: 25)),
                      ),
                    ),
                  ],
                )),
              ),
              Row(
                children: [
                  Container(
                    //margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    height: MediaQuery.of(context).size.height,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.indigo[300],
                      //borderRadius: BorderRadius.all(Radius.circular(15))),
                      //child: Center(child: Text('Bienvenido lo que sea')),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 2),
                            width: 70,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.cyan[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 2),
                            width: 70,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.cyan[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 2),
                            width: 70,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.cyan[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 2),
                            width: 70,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.cyan[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      color: Colors.red[300],
                      //borderRadius: BorderRadius.all(Radius.circular(15))),
                      //child: Center(child: Text('Bienvenido lo que sea')),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          width: MediaQuery.of(context).size.width - 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                              child: Text('Primer grupo',
                                  style: TextStyle(fontSize: 25))),
                        ),
                        Container(
                          height: 130,
                          child: ListView.separated(
                            padding: EdgeInsets.all(2),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            separatorBuilder: (context, _) =>
                                SizedBox(width: 4),
                            itemBuilder: (context, index) =>
                                buildCard(item: items0[index]),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          width: MediaQuery.of(context).size.width - 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                              child: Text('Segundo grupo',
                                  style: TextStyle(fontSize: 25))),
                        ),
                        Container(
                          height: 130,
                          child: ListView.separated(
                            padding: EdgeInsets.all(2),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            separatorBuilder: (context, _) =>
                                SizedBox(width: 4),
                            itemBuilder: (context, index) =>
                                buildCard(item: items1[index]),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          width: MediaQuery.of(context).size.width - 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                              child: Text('Tercer grupo',
                                  style: TextStyle(fontSize: 25))),
                        ),
                        Container(
                          height: 130,
                          child: ListView.separated(
                            padding: EdgeInsets.all(2),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            separatorBuilder: (context, _) =>
                                SizedBox(width: 4),
                            itemBuilder: (context, index) =>
                                buildCard(item: items2[index]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ]),
      );

  //Row(children: [
  //  Container(
  //    height: double.infinity,
  //    width: MediaQuery.of(context).size.width * 0.25,
  //    decoration: BoxDecoration(
  //      color: Colors.green,
  //    ),
  //  ),
  //  Container(
  //    height: double.infinity,
  //    width: MediaQuery.of(context).size.width * 0.75,
  //    decoration: BoxDecoration(
  //      color: Colors.blue,
  //    ),
  //  ),

//  Widget buildCard(int index) =>

//    Column(

//    );

  //Container(
  //  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
  //  width: double.infinity,
  //  //height: 45,
  //  decoration: BoxDecoration(
  //      color: Color(0xFFB235B4E),
  //      borderRadius: BorderRadius.all(Radius.circular(15))),
  //  child: Center(
  //    child:
  //        Text('Servicio/tramite # $index', style: TextStyle(fontSize: 30)),
  //  ),
  //);
//}

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 150,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Material(
                  color: Color(0xFFB235B4E),
                  child: Center(
                    child: Ink(
                        //color: Colors.amber,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            //color: Colors.red,
                            height: 60,
                            width: 60,
                            child: item.satIcon,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Container(
                            //color: Colors.yellow,
                            height: 40,
                            child: Center(
                              child: Text(item.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ])),
                  )),
            ),
          ],
        ),
      );
}

class MyTabs {
  final String title;
  final Color? color;
  MyTabs({this.title = '', this.color});
}
