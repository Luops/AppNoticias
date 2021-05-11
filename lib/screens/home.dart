import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/heroiVenceFuria.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/mibrTeraExit.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/asCincoFinais.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/equipesQueChegaram.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/loudAcusaPain.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';

class Home extends StatelessWidget {
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
              SizedBox(
                height: 90,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 319,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            //Puxa a notícia equipes que mais chegaram na final
                            child: Image.asset(
                              "assets/images/brtteditado.png",
                              scale: 2.2,
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) {
                                  return EquipesMaisChegaram();
                                }),
                              );
                            },
                          ),
                          GestureDetector(
                            child: Image.asset(
                              "assets/images/MIBR_editado.png",
                              scale: 2.2,
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) {
                                  return MibrTeraExit();
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              "assets/images/LOUD_editado.png",
                              scale: 2.2,
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) {
                                  return LoudAcusaPain();
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Furia.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CS:GO",
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "ESL Pro League: Heroic vence e elimina FURIA da competição",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Nesse sábado (17), a FURIA enfrentou mais uma decisão na BLAST Premier: Spring Showdown 2021. EM partida contra os russos Gambit.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return HeroicVenceFuria();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Pain.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "League of Legends",
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Relembre as cinco finais de CBLOL  que a paiN já disputou",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "No próximo domingo (18), a paiN Gaming vai encarar a sua sexta final de CBLOL na história. ",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return AsCincoFinaisDaPain();
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
