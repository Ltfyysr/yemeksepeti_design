import 'package:flutter/material.dart';
import 'package:yemeksepeti_page_design/colors.dart';
import 'package:yemeksepeti_page_design/kampanyalariGoster.dart';
import 'package:yemeksepeti_page_design/mutfaktakileriGoster.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Genişlik: $ekranGenisligi");
    print("Yükseklik: $ekranYuksekligi");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Yemeksepeti",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Esentepe Dede Korkut Sk. No:28/1",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: ekranGenisligi,
                height: ekranYuksekligi / 13,
                color: anaRenk,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 0.5, bottom: 8, left: 8, right: 8),
                  child: Card(
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: yaziRenk1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Restoran veya mağaza arayın",
                              style: TextStyle(color: yaziRenk1),
                            )
                          ],
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
              Container(
                width: ekranGenisligi,
                height: ekranYuksekligi / 3,
                color: arkaPlan,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 180,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('resimler/mahalle.png'))),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 180,
                              height: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('resimler/market.png'))),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('resimler/yemek.png'))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: Text(
                  "Kampanyalar",
                  style: TextStyle(
                      fontSize: 20,
                      color: yaziRenk3,
                      fontWeight: FontWeight.bold),
                ),
              ),
              KampanyalariGoster(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Mutfak",
                  style: TextStyle(
                      fontSize: 20,
                      color: yaziRenk3,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MutfaktakileriGoster(),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Giriş Yap/Hesap Oluştur",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            decoration: BoxDecoration(color: Color(0xFFf72858)),
          ),
        ]),
      ),
    );
  }
}
