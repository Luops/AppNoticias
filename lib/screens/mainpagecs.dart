import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/evil.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/furiaEPain.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/heroiVenceFuria.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/mibrTeraExit.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasCs/mibrVsNatus.dart';

class MainPageCs extends StatelessWidget {
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
                          "Home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
                    ],
                  ),
                ),
              ), //Linha cinza das op????es - layout conclu??do
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
                      Image.asset("assets/images/evil.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MICHU substitui tarik na Evil Geniuses",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "A Evil Geniuses confirmou os rumores e anunciou na ??ltima quinta-feira (15) a contrata????o do polon??s MICHU para o lugar de tarik que passa a se concentrar nas streams e na cria????o de conte??do, segundo comunicado.",
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
                        return Evil();
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
                      Image.asset("assets/images/Furia2.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FURIA e paiN caem no mesmo grupo da DreamHack Spring",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "FURIA e paiN Gaming estar??o juntas no grupo B da DreamHack Spring. A divis??o foi divulgada nesta quinta-feira (15) e revelou os 8 times que estar??o em cada grupo, al??m das partidas iniciais.",
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
                        return FuriaEPain();
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
                      Image.asset("assets/images/Furia.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ESL Pro League: Heroic vence e elimina FURIA da competi????o",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Embalados pela vit??ria mai??scula sobre a Astralis, a FURIA entrou novamente no servidor na ESL Pro League. ",
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
                      Image.asset("assets/images/Mibr.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MIBR ter?? exit no lugar de danoco durante BLAST e RMR",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "A MIBR anunciou que Raphael 'exit' substituir?? Daniel 'danoco' no elenco de CS:GO durante as disputas da BLAST Premier Spring Showdown e do pr??ximo torneio RMR",
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
                        return MibrTeraExit();
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
                      Image.asset("assets/images/mibr2.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Confronto entre MIBR e Natus Vincere ?? o mais assitido da ESL Pro League",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Mesmo ainda v??lida pela fase de grupos da ESL Pro League, a partida entre MIBR e Natus Vincere foi a mais assistida de toda a competi????o. Al??m da equipe de yeL, a FURIA tamb??m aparece na lista das cinco partidas mais visualizadas.",
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
                        return MibrVsNatus();
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
