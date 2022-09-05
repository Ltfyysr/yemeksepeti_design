import 'package:flutter/material.dart';
import 'package:yemeksepeti_page_design/kampanya.dart';


class KampanyalariGoster extends StatefulWidget {

  @override
  State<KampanyalariGoster> createState() => _KampanyalariGosterState();
}

class _KampanyalariGosterState extends State<KampanyalariGoster> {
  late final List<Kampanya> _items;

  @override
  void initState() {
    super.initState();
    _items=[
      Kampanya(kampanyaId: 1, kampanyaResimAdi: "resimler/kampanya.png"),
      Kampanya(kampanyaId: 2, kampanyaResimAdi: "resimler/kampanya1.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya2.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya3.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya4.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya5.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya6.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya7.png"),
      Kampanya(kampanyaId: 3, kampanyaResimAdi: "resimler/kampanya8.png"),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            itemBuilder: (context,index){
              return Container(
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(_items[index].kampanyaResimAdi))
                ),
                margin: const EdgeInsets.symmetric(horizontal: 8),
              );
            },
          )
      ),
    );
  }
}
