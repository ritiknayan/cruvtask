// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cruvtask/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _seatNumberFocusNode = FocusNode();

  var enteredSeatNumber = '';
  var selectedSeatNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Seat Finder",
                    style: kTitleTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      focusNode: _seatNumberFocusNode,
                      keyboardType: TextInputType.number,
                      decoration: textInputDecoration.copyWith(
                        labelText: "Enter Seat Number...",
                      ),
                      onChanged: (value) {
                        setState(() {
                          enteredSeatNumber = value;
                        });
                        int seatNum = int.tryParse(value) ?? 0;
                        if (seatNum < 1 || seatNum > 72) {
                          // Show error message dialog
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Invalid Seat Number"),
                              content: const Text(
                                  "Please enter a valid seat number between 1 and 72."),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("OK"),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 59,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            selectedSeatNumber = enteredSeatNumber;
                          });
                        }
                        _seatNumberFocusNode.unfocus();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff86CDFF),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Find',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: [
                  //Total seat in coach is 72
                  ReusableContainer(
                    seatNumber: 1.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '1'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 2.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '2'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 3.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '3'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 7.toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '7'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 4.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '4'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 5.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '5'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 6.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '6'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 8.toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '8'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 9.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '9'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 10.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '10'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 11.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '11'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 15.toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '15'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 12.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '12'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 13.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '13'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 14.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '14'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 16.toString().toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '16'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 17.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '17'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 18.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '18'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 19.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '19'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 23.toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '23'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 20.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '20'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 21.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '21'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 22.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '22'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 24.toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '24'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 25.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '25'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 26.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '26'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 27.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '27'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 31.toString().toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '31'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 28.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '28'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 29.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '29'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 30.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '30'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 32.toString().toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '32'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 33.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '33'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 34.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '34'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 35.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '35'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 39.toString().toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '39'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 36.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '36'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 37.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '37'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 38.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '38'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 40.toString().toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '40'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 41.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '41'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 42.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '42'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 43.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '43'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 47.toString().toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '47'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 44.toString().toString(),
                    seatType: 'Lower',
                    colour: selectedSeatNumber == '44'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 45.toString().toString(),
                    seatType: 'Lower',
                    colour: selectedSeatNumber == '45'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 46.toString(),
                    seatType: 'Lower',
                    colour: selectedSeatNumber == '46'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 48.toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '48'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 49.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '49'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 50.toString(),
                    seatType: 'Middle',
                    colour: selectedSeatNumber == '50'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 51.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '51'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 55.toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '55'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 52.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '52'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 53.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '53'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 54.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '54'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 56.toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '56'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 57.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '57'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 58.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '58'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 59.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '59'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 63.toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '63'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 60.toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '60'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 61.toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '61'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 62.toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '62'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 64.toString().toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '64'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 65.toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '65'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 66.toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '66'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 67.toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '67'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 71.toString().toString().toString(),
                    seatType: 'SIDE LOWER',
                    colour: selectedSeatNumber == '71'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 68.toString().toString().toString(),
                    seatType: 'LOWER',
                    colour: selectedSeatNumber == '68'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 69.toString().toString().toString(),
                    seatType: 'MIDDLE',
                    colour: selectedSeatNumber == '69'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: 70.toString().toString().toString(),
                    seatType: 'UPPER',
                    colour: selectedSeatNumber == '70'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: "",
                    seatType: '',
                    colour: kNoInfoContainer,
                  ),
                  ReusableContainer(
                    seatNumber: 72.toString(),
                    seatType: 'SIDE UPPER',
                    colour: selectedSeatNumber == '72'
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatefulWidget {
  var seatNumber = '';
  var seatType = '';
  var colour;
  ReusableContainer({
    Key? key,
    required this.seatNumber,
    required this.seatType,
    this.colour,
  }) : super(key: key);

  @override
  State<ReusableContainer> createState() => _ReusableContainerState();
}

class _ReusableContainerState extends State<ReusableContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.colour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.seatNumber.toString(),
            style: kSeatNumberTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.seatType,
            style: kSeatTypeTextStyle,
          ),
        ],
      ),
    );
  }
}
