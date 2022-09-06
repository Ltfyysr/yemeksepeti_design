import 'package:flutter/material.dart';
import 'package:yemeksepeti_page_design/kampanya.dart';

class KampanyalariGoster extends StatefulWidget {
  @override
  State<KampanyalariGoster> createState() => _KampanyalariGosterState();
}

class _KampanyalariGosterState extends State<KampanyalariGoster> {
  Future<List<Kampanya>> kampanyalariGetir() async {
    var kampanyalarListesi = <Kampanya>[];

    var k1 = Kampanya(kampanyaId: 1, kampanyaResimAdi: "kampanya.png");
    var k2 = Kampanya(kampanyaId: 2, kampanyaResimAdi: "kampanya1.png");
    var k3 = Kampanya(kampanyaId: 3, kampanyaResimAdi: "kampanya2.png");
    var k4 = Kampanya(kampanyaId: 4, kampanyaResimAdi: "kampanya3.png");
    var k5 = Kampanya(kampanyaId: 5, kampanyaResimAdi: "kampanya4.png");
    var k6 = Kampanya(kampanyaId: 6, kampanyaResimAdi: "kampanya5.png");
    var k7 = Kampanya(kampanyaId: 7, kampanyaResimAdi: "kampanya6.png");
    var k8 = Kampanya(kampanyaId: 8, kampanyaResimAdi: "kampanya7.png");
    var k9 = Kampanya(kampanyaId: 9, kampanyaResimAdi: "kampanya8.png");
    kampanyalarListesi.add(k1);
    kampanyalarListesi.add(k2);
    kampanyalarListesi.add(k3);
    kampanyalarListesi.add(k4);
    kampanyalarListesi.add(k5);
    kampanyalarListesi.add(k6);
    kampanyalarListesi.add(k7);
    kampanyalarListesi.add(k8);
    kampanyalarListesi.add(k9);
    return kampanyalarListesi;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: FutureBuilder<List<Kampanya>>(
            future: kampanyalariGetir(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var kampanyalarListesi = snapshot.data;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kampanyalarListesi!.length,
                  itemBuilder: (context, indeks) {
                    var kampanya = kampanyalarListesi[indeks];
                    return Container(
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "resimler/${kampanya.kampanyaResimAdi}"))),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    );
                  },
                );
              } else {
                return const Center();
              }
            },
          )),
    );
  }
}
