import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';

class AsCincoFinaisDaPain extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "League of Legends",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Relembre as cinco finais de CBLOL que a paiN já disputou.",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF180F97)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset("assets/images/Pain.png"),
                      SizedBox(height: 10),
                      Text(
                        "No próximo dia 18, domingo, a paiN Gaming vai encarar sua sexta final de CBLOL na história. No cenário competitivo de League of Legends desde 2012, a organização fundada por “PAADA” acumula dois títulos e três vices da maior competição nacional da modalidade. \n\nNesta matéria, vamos relembrar todas as decisões que a equipe já passou em sua história de quase dez anos no competitivo de LoL.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CBLoL 2013 – paiN 3 x 1 CNB, WTC Golden Hall em São Paulo – SP",
                              style: TextStyle(
                                color: Color(0xFF180F97),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "1º split CBLoL 2014 – paiN 2 x 3 Keyd, Centro de Convenções em Fortaleza – CE",
                              style: TextStyle(
                                color: Color(0xFF180F97),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2º split CBLoL 2015 – paiN 3 x 0 INTZ, Allianz Parque em São Paulo – SP",
                              style: TextStyle(
                                color: Color(0xFF180F97),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2º split CBLoL 2017 – paiN 1 x 3 Team oNe, Mineirinho em Belo Horizonte – MG",
                              style: TextStyle(
                                color: Color(0xFF180F97),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2º split CBLoL 2020 – paiN 1 x 3 INTZ, São Paulo – SP",
                              style: TextStyle(
                                color: Color(0xFF180F97),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
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
