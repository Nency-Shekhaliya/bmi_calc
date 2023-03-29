import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mybmicalc(),
  ));
}

class mybmicalc extends StatefulWidget {
  const mybmicalc({Key? key}) : super(key: key);

  @override
  State<mybmicalc> createState() => _mybmicalcState();
}

class _mybmicalcState extends State<mybmicalc> {
  @override
  var iconcolor = Colors.redAccent;
  var m;
  double BMI = 0;
  double sliderval = 0;
  double weightval = 0;
  double ageval = 0;

  Color conColor = const Color(0xff1d1e33);
  Color conColor1 = const Color(0xff1d1e33);
  Color femaleColor = Colors.white;
  Color maleColor = Colors.white;
  double height = 175;
  double width = 150;
  double height1 = 175;
  double width1 = 150;

  String result() {
    if (BMI >= 25) {
      return 'Overweight';
    } else if (BMI > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: const Color(0xff090E21),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xff090E21),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xff090E21),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              conColor = const Color(0xff3B3C4D);
                              conColor1 = const Color(0xff1d1e33);
                              femaleColor = const Color(0xffEB1555);
                              width = (width == 150) ? 130 : 150;
                              height = (height == 175) ? 150 : 175;
                            });
                          },
                          child: AnimatedContainer(
                            margin: const EdgeInsets.only(left: 20),
                            height: height,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: conColor,
                            ),
                            duration: const Duration(seconds: 3),
                            curve: Curves.easeInOut,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 120,
                                  color: femaleColor,
                                ),
                                const Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              conColor1 = const Color(0xff3B3C4D);
                              conColor = const Color(0xff1d1e33);
                              maleColor = const Color(0xffEB1555);
                              width1 = (width1 == 150) ? 130 : 150;
                              height1 = (height1 == 175) ? 150 : 175;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 3),
                            margin: const EdgeInsets.all(15),
                            height: height1,
                            width: width1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: conColor1,
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  size: 120,
                                  color: maleColor,
                                ),
                                const Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 150,
                      width: 330,
                      padding: const EdgeInsets.only(top: 20),
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1d1e33),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: const Text(
                                "HEIGHT",
                                style: TextStyle(
                                    color: Color(0xff626473),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 360,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "${sliderval.toInt()}",
                                    style: const TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  const TextSpan(
                                      text: " cm",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Color(0xff626473),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 360,
                            child: Slider(
                              activeColor: const Color(0xffF5C1D1),
                              thumbColor: Colors.redAccent,
                              inactiveColor: const Color(0xff555555),
                              min: 0,
                              max: 300,
                              divisions: 300,
                              value: sliderval,
                              onChanged: (val) {
                                setState(
                                  () {
                                    sliderval = val;
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0xff090E21),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      bottom: 20,
                    ),
                    height: 175,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1d1e33),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 130,
                          child: const Text(
                            "Weight",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Container(
                          child: Text(
                            "${weightval.toInt()}",
                            style: const TextStyle(
                                fontSize: 45, color: Colors.white),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              (weightval > 0) ? weightval-- : weightval;
                            });
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.remove_circle,
                                  size: 65,
                                  color: Color(0xff4c4f5e),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      weightval += 1;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add_circle_outlined,
                                    size: 65,
                                    color: Color(0xff4c4f5e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    height: 175,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1d1e33),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 170,
                          child: const Text(
                            "Age",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Container(
                          child: Text(
                            "${ageval.toInt()}",
                            style: const TextStyle(
                                fontSize: 45, color: Colors.white),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              (ageval > 0) ? ageval-- : ageval;
                            });
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.remove_circle,
                                  size: 65,
                                  color: Color(0xff4c4f5e),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      ageval += 1;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add_circle_outlined,
                                    size: 65,
                                    color: Color(0xff4c4f5e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 250,
              margin: const EdgeInsets.only(bottom: 10),
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                child: Text(
                  "${result()}",
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(
                  () {
                    m = sliderval / 100;
                    BMI = weightval / (m * m);
                    result();
                  },
                );
              },
              child: Container(
                height: 50,
                width: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffEB1555),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
