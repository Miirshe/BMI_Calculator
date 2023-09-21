import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height_value = 180;
  int weight_value = 65;
  int age_value = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff0a0e21),
          title: Center(child: Text('BMI Calculators ')),
          centerTitle: true),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: ResuableCard(
              child: IconContent(
                iconData: FontAwesomeIcons.mars,
                title: 'MALE',
              ),
            )),
            Expanded(
                child: ResuableCard(
              child: IconContent(
                iconData: FontAwesomeIcons.venus,
                title: 'FEMALE',
              ),
            )),
          ],
        )),
        Expanded(
            child: ResuableCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HEIGHT',
                  style: TextStyle(fontSize: 25, color: Colors.grey)),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height_value.round().toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                  Text('CM',
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: kBottomContainerColour,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 16,
                    ),
                    overlayColor: const Color.fromARGB(255, 253, 106, 106)),
                child: Slider(
                    value: height_value,
                    min: 10,
                    max: 310,
                    onChanged: (newVal) {
                      setState(() {
                        height_value = newVal;
                        print('height $height_value');
                      });
                    }),
              )
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ResuableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(weight_value.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w700)),
                        Text('Kg',
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RawButtons(
                          icons: Icon(Icons.remove),
                          onPressed: () => {
                            setState(()=>{
                              weight_value == 0 ? weight_value = 0 : weight_value --
                            })
                          }
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RawButtons(
                          icons: Icon(Icons.add),
                          onPressed: () => {
                            setState(() => weight_value++)
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: ResuableCard(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(age_value.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w700)),
                        Text('yrs',
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RawButtons(
                          icons: Icon(Icons.remove),
                          onPressed: (()=> setState(()=> age_value == 0 ? age_value = 0 : age_value--)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        RawButtons(
                          icons: Icon(Icons.add),
                          onPressed: (()=> setState(()=> age_value++ )),
                        )
                      ],
                    )
                  ]),
            ))
          ],
        )),
        RawMaterialButton(
          onPressed: () => {},
          child: Text(
            'Calculate',
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          fillColor: kBottomContainerColour,
          constraints:
              BoxConstraints.tightFor(width: double.infinity, height: 60),
        )
      ]),
    );
  }
}
