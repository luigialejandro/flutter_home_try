import 'package:flutter/material.dart';
import 'package:flutter_home_try/show_image_from_listview.dart';

class CardItem {
  final String downloadedImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.downloadedImage,
    required this.title,
    required this.subtitle,
  });
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    const CardItem(
      downloadedImage: "assets/images/Ambrym.png",
      title: 'Ambrym',
      subtitle: 'Vanuatu',
    ),
    const CardItem(
      downloadedImage: "assets/images/arenal.png",
      title: 'Arenal volcano',
      subtitle: 'Costa Rica',
    ),
    const CardItem(
      downloadedImage: "assets/images/asama.png",
      title: 'Asama volcano',
      subtitle: 'Japan',
    ),
    const CardItem(
      downloadedImage: "assets/images/volcanfuegocolima.png",
      title: 'Colima Fuego',
      subtitle: 'Mexico',
    ),
    const CardItem(
      downloadedImage: "assets/images/erebus.png",
      title: 'Erebus',
      subtitle: 'Antarctica',
    ),
    const CardItem(
      downloadedImage: "assets/images/Erta_Ale.png",
      title: 'Erta Ale',
      subtitle: 'Ethiopia',
    ),
    const CardItem(
      downloadedImage: "assets/images/Hekla.png",
      title: 'Hekla',
      subtitle: 'Iceland',
    ),
    const CardItem(
      downloadedImage: "assets/images/karymskynew.png",
      title: 'Karymsky',
      subtitle: 'Russia',
    ),
    const CardItem(
      downloadedImage: "assets/images/kilauea.png",
      title: 'Kilauea',
      subtitle: 'Hawaiian islands USA',
    ),
    const CardItem(
      downloadedImage: "assets/images/merapi.png",
      title: 'Merapi',
      subtitle: 'Indonesia',
    ),
    const CardItem(
      downloadedImage: "assets/images/nyiragongo.png",
      title: 'Nyiragongo',
      subtitle: 'The Congo',
    ),
    const CardItem(
      downloadedImage: "assets/images/Pacaya.png",
      title: 'Pacaya',
      subtitle: 'Guatemala',
    ),
    const CardItem(
      downloadedImage: "assets/images/semeru.png",
      title: 'Semeru',
      subtitle: 'Indonesia',
    ),
    const CardItem(
      downloadedImage: "assets/images/Stromboli.png",
      title: 'Stromboli',
      subtitle: 'Sicily Italy',
    ),
    const CardItem(
      downloadedImage: "assets/images/teide.png",
      title: 'Teide',
      subtitle: 'Canary Islands Spain',
    ),
    const CardItem(
      downloadedImage: "assets/images/tungurahua.png",
      title: 'Tungurahua',
      subtitle: 'Ecuador',
    ),
  ];

  List<CardItem> items1 = [
    const CardItem(
      downloadedImage: "assets/images/bezy.png",
      title: 'Bezymianny',
      subtitle: 'Kamchatka Russia',
    ),
    const CardItem(
      downloadedImage: "assets/images/copague.png",
      title: 'Copahue',
      subtitle: 'Argentina',
    ),
    const CardItem(
      downloadedImage: "assets/images/dukono.png",
      title: 'Dukono',
      subtitle: 'Indonesia',
    ),
    const CardItem(
      downloadedImage: "assets/images/etna.png",
      title: 'Etna',
      subtitle: 'Italy',
    ),
    const CardItem(
      downloadedImage: "assets/images/eyjafj.png",
      title: 'Eyjafjallajökull',
      subtitle: 'Iceland',
    ),
    const CardItem(
      downloadedImage: "assets/images/fuegoguatemala.png",
      title: 'Fuego',
      subtitle: 'Guatemala',
    ),
    const CardItem(
      downloadedImage: "assets/images/Krakatoa.png",
      title: 'Krakatau Anak',
      subtitle: 'Indonesia',
    ),
    const CardItem(
      downloadedImage: "assets/images/masaya.png",
      title: 'Masaya volcano',
      subtitle: 'Honduras',
    ),
    const CardItem(
      downloadedImage: "assets/images/Mayon.png",
      title: 'Mayon Mountain',
      subtitle: 'Philippines',
    ),
    const CardItem(
      downloadedImage: "assets/images/nyamuragira.png",
      title: 'Nyamuragira',
      subtitle: 'The Congo',
    ),
    const CardItem(
      downloadedImage: "assets/images/lengai.png",
      title: 'Ol Doinyo Lengai',
      subtitle: 'Tanzania',
    ),
    const CardItem(
      downloadedImage: "assets/images/poas.png",
      title: 'Poas volcano',
      subtitle: 'Costa Rica',
    ),
    const CardItem(
      downloadedImage: "assets/images/popocatepetl.png",
      title: 'Popocatepetl',
      subtitle: 'Mexico',
    ),
    const CardItem(
      downloadedImage: "assets/images/elena.png",
      title: 'Saint Helens',
      subtitle: 'USA',
    ),
    const CardItem(
      downloadedImage: "assets/images/Sakurajima1.png",
      title: 'Sakurajima',
      subtitle: 'Japan',
    ),
    const CardItem(
      downloadedImage: "assets/images/sinabung.png",
      title: 'Sinabung',
      subtitle: 'Indonesia',
    ),
  ];

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

  Widget buildPage() => SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: Text('Bienvenido Fulanit@ Merenganit@ lo que sea')),
              ),
              Row(
                children: [
                  Container(
                    //margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    height: MediaQuery.of(context).size.height,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      //borderRadius: BorderRadius.all(Radius.circular(15))),
                      //child: Center(child: Text('Bienvenido lo que sea')),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
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
                          child: Center(child: Text('Primer grupo')),
                        ),
                        Container(
                          height: 200,
                          child: ListView.separated(
                            padding: EdgeInsets.all(2),
                            scrollDirection: Axis.horizontal,
                            itemCount: 16,
                            separatorBuilder: (context, _) =>
                                SizedBox(width: 2),
                            itemBuilder: (context, index) =>
                                buildCard(item: items[index]),
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
                          child: Center(child: Text('Segundo grupo')),
                        ),
                        Container(
                          height: 200,
                          child: ListView.separated(
                            padding: EdgeInsets.all(2),
                            scrollDirection: Axis.horizontal,
                            itemCount: 16,
                            separatorBuilder: (context, _) =>
                                SizedBox(width: 2),
                            itemBuilder: (context, index) =>
                                buildCard(item: items1[index]),
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
        width: 200,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.downloadedImage),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowImage(
                              item: item,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Text(
              item.subtitle,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      );
}
