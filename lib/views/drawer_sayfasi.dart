import 'package:flutter/material.dart';

class DrawerSayfasi extends StatefulWidget {
  const DrawerSayfasi({Key? key}) : super(key: key);

  @override
  State<DrawerSayfasi> createState() => _DrawerSayfasiState();
}

class _DrawerSayfasiState extends State<DrawerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero,
            children: [
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
                decoration: const BoxDecoration(color: Color(0xFFf72858)),
              ),
            ]
        )
    );
  }
}
