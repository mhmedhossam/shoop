import 'package:flutter/material.dart';
import 'package:go/home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool usa = false;
  //bool val = false;
  int _currentStep = 0;
  bool _isVerticalStepper = true;
  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  _stepContinue() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  Color mycolor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 55,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: 55,
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("homepage");
                      },
                    ),
                  ),
                ),
              ],
            ),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Expanded(
              // the Stepper widget
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(primary: Color(0xffE99000)),
                ),
                child: Stepper(
                  // vertical or horizontial
                  type: _isVerticalStepper
                      ? StepperType.horizontal
                      : StepperType.horizontal,
                  physics: const ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => _stepTapped(step),
                  onStepContinue: _stepContinue,
                  onStepCancel: _stepCancel,
                  steps: [
                    Step(
                      title: const Text('address'),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'street 1'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'street 2'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'city'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'state'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'country'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    // The second step: Phone number
                    Step(
                      title: const Text('payment'),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'name on card'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.credit_card),
                                labelText: 'card number'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Expire date'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'cvv'),
                          ),
                          Row(
                            children: [
                              Checkbox(value: usa, onChanged: (val) {}),
                              Text("save the card delalis")
                            ],
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    // The third step: Verify phone number
                    Step(
                      title: const Text('sumarry'),
                      content: Column(
                        children: <Widget>[
                          Image.asset("images/333.jpg"),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Name card'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Card number'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Expiry Date'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Expiry Date'),
                          ),
                          Row(
                            children: [
                              Checkbox(value: usa, onChanged: (val) {}),
                              Text("save the card delalis")
                            ],
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
