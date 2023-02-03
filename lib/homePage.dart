import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomescreenState();
}

class _HomescreenState extends State<Home> {
  int i = 0, j = 0;
  bool t = false;
  List ql = [
    "1. Name the National animal of India ?",
    "2. The national river of India ?",
    "3. Total number of Districts in Gujarat ?",
    "4. Which is largest District of Gujarat ?",
    "5. Which is longest river in Gujarat ?",
  ];
  List al = [
    "Tiger",
    "Ganga",
    "33",
    "Kutch",
    "Narmada",
  ];
  List oal = [
    "Tiger",
    "Ganga",
    "33",
    "Kutch",
    "Narmada",
  ];
  List obl = [
    "Lion",
    "Narmada",
    "11",
    "Surat",
    "Ganga",
  ];
  List ocl = [
    "Gorilla",
    "Mahi",
    "22",
    "Amreli",
    "Tapti",
  ];
  List odl = [
    "Crocodile",
    "Krishna",
    "44",
    "Bhavnagar",
    "Cauvery",
  ];
  List ual = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "KBC App",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text(
                    "${ql[i]}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (j < 6) {
                              ual.add("${oal[i]}");
                              setState(() {
                                if (ual[i] == al[i]) {
                                  Navigator.pushNamed(context, 'winner');
                                  if (i < 4) {
                                    i++;
                                    j++;
                                  }
                                  if (i == 4) {
                                    j++;
                                  }
                                } else {
                                  Navigator.pushNamed(context, 'loser');
                                  i = 0;
                                  j = 0;
                                  ual.clear();
                                }
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            color: Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              "A. ${oal[i]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (j < 6) {
                              ual.add("${obl[i]}");
                              setState(() {
                                if (ual[i] == al[i]) {
                                  Navigator.pushNamed(context, 'winner');
                                  if (i < 4) {
                                    i++;
                                    j++;
                                  }
                                  if (i == 4) {
                                    j++;
                                  }
                                } else {
                                  Navigator.pushNamed(context, 'loser');
                                  i = 0;
                                  j = 0;
                                  ual.clear();
                                }
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 70,
                            color: Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              "B. ${obl[i]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (j < 6) {
                              ual.add("${ocl[i]}");

                              setState(() {
                                if (ual[i] == al[i]) {
                                  Navigator.pushNamed(context, 'winner');
                                  if (i < 4) {
                                    i++;
                                    j++;
                                  }
                                  if (i == 4) {
                                    j++;
                                  }
                                } else {
                                  Navigator.pushNamed(context, 'loser');
                                  i = 0;
                                  j = 0;
                                  ual.clear();
                                }
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 70,
                            color: Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              "C. ${ocl[i]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (j < 6) {
                              ual.add("${odl[i]}");

                              setState(() {
                                if (ual[i] == al[i]) {
                                  Navigator.pushNamed(context, 'winner');
                                  if (i < 4) {
                                    i++;
                                    j++;
                                  }
                                  if (i == 4) {
                                    j++;
                                  }
                                } else {
                                  Navigator.pushNamed(context, 'loser');
                                  i = 0;
                                  j = 0;
                                  ual.clear();
                                }
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 70,
                            color: Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              "D. ${odl[i]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Visibility(
                      visible: j >= 6 ? true : false,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            j = 0;
                            i = 0;
                            ual.clear();
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          color: Colors.black,
                          alignment: Alignment.center,
                          child: Text(
                            "Reset",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
