import 'package:flutter/material.dart';
import 'package:yemeksepeti_page_design/mutfak.dart';

class MutfaktakileriGoster extends StatefulWidget {
  const MutfaktakileriGoster({Key? key}) : super(key: key);

  @override
  State<MutfaktakileriGoster> createState() => _MutfaktakileriGosterState();
}

class _MutfaktakileriGosterState extends State<MutfaktakileriGoster> {
  late final List<Mutfak> _items;
  late final List<Mutfak> _items2;

  @override
  void initState() {
    super.initState();
    _items = [
      Mutfak(
          resimId: 1,
          resimAdi: "resimler/kebap.png",
          resimYazi: "Kebap & Türk " "\n" "   Mutfağı"),
      Mutfak(resimId: 2, resimAdi: "resimler/pizza.png", resimYazi: "Pizza"),
      Mutfak(resimId: 3, resimAdi: "resimler/kahve.png", resimYazi: "Kahve"),
      Mutfak(
          resimId: 4, resimAdi: "resimler/hamburger.png", resimYazi: "Burger"),
      Mutfak(
          resimId: 5,
          resimAdi: "resimler/dunyamutfagi.png",
          resimYazi: "Dünya Mutfağı" "\n" "   & Cafe"),
      Mutfak(
          resimId: 6,
          resimAdi: "resimler/cigkofte.png",
          resimYazi: "Çiğ Köfte"),
      Mutfak(
          resimId: 7, resimAdi: "resimler/dondurma.png", resimYazi: "Dondurma"),
      Mutfak(resimId: 8, resimAdi: "resimler/tavuk.png", resimYazi: "Tavuk"),
    ];
    _items2 = [
      Mutfak(
          resimId: 9,
          resimAdi: "resimler/tost.png",
          resimYazi: "Tost & Sandviç"),
      Mutfak(resimId: 10, resimAdi: "resimler/tatli.png", resimYazi: "Tatlı"),
      Mutfak(resimId: 11, resimAdi: "resimler/kofte.png", resimYazi: "Köfte"),
      Mutfak(
          resimId: 12,
          resimAdi: "resimler/balık.png",
          resimYazi: "Balık & Deniz " "\n" "     Ürünleri"),
      Mutfak(
          resimId: 13, resimAdi: "resimler/su.png", resimYazi: "Damacana Su"),
      Mutfak(
          resimId: 14,
          resimAdi: "resimler/uzakdogu.png",
          resimYazi: "Uzak Doğu"),
      Mutfak(
          resimId: 15,
          resimAdi: "resimler/borek.png",
          resimYazi: "Kahvaltı & Börek"),
      Mutfak(
          resimId: 16,
          resimAdi: "resimler/pastane.png",
          resimYazi: "Pastane & Fırın"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          itemBuilder: (context, indeks) {
            return Column(
              children: [
                SizedBox(
                  height: 150,
                  child: Card(
                    elevation: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 90,
                            child: Image.asset(_items[indeks].resimAdi)),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Center(
                              child: Text(
                            _items[indeks].resimYazi,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            maxLines: 2,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: Card(
                    elevation: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 90,
                            child: Image.asset(_items2[indeks].resimAdi)),
                        Center(
                            child: Text(_items2[indeks].resimYazi,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
