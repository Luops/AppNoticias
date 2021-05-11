import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';

class Evil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                "assets/images/LOGO.png",
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFFC8C8C8),
                width: double.infinity,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 21),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Text("Home",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return Home();
                            }),
                          );
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        child: Text(
                          "League of Legends",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return MainPageLol();
                            }),
                          );
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        child: Text(
                          "CS:GO",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return MainPageCs();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ), //Linha cinza das opções - layout concluído
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 60,
                ),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "CS:GO",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "MICHU substitui tarik na Evil Geniuses",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF180F97)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset("assets/images/evil.png"),
                      SizedBox(height: 10),
                      Text(
                        "A Evil Geniuses confirmou os rumores e anunciou na última quinta-feira (15) a contratação do polonês MICHU para o lugar de tarik que passa a se concentrar nas streams e na criação de conteúdo, segundo comunicado.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MICHU estava sem contratado desde que deixou a equipe da Envy em fevereiro último. Na ocasião, o jogador já estava como inativo na organização. O polonês também possui passagens por Virtus.pro, Team Kinguim e outras.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Segundo comunicado da Evil Geniuses, tarik “está em transição para se concentrar nas streams e na criação de conteúdo. Estamos entusiasmados em apoiá-lo e trabalhar com ele enquanto exploramos os próximos passos em sua carreira”.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "MICHU é o segundo europeu no elenco da Evil Geniuses. Além do polonês, o awper búlgaro CeRq também integra o elenco profissional da organização norte-americana..",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
