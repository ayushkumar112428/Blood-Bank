import 'package:bloodbank/Screens/AddDonor/added_donor_data.dart';
import 'package:bloodbank/Style/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:bloodbank/Sqflite/sql_helper.dart';

class DonorForm extends StatefulWidget {
  const DonorForm({super.key});

  @override
  State<DonorForm> createState() => _DonorFormState();
}

class _DonorFormState extends State<DonorForm> {
  // List<Map<String,dynamic>> _donorData = [];
  Map<String,dynamic> addDonorData = {
    'Group' : '',
    'DonorName': '',
    'DonorPhoneNumber': '',
    'DonorProfession': '',
    'DonorDisease': '',
    'DonorAddress': '',
    'DonorAadharNumber': '',
    'BloodReceivesHospital': '',
    'HospitalLocation': '',
    'DonorWeight': '',
    'DonorAge': '',
    'WhoManyTimeDonate': '',
  };
  // void _refreshPage() async {
  //   final data = await SQLHelperBloodDonor.getItems();
  //   setState(() {
  //     _donorData = data;
  //   });
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   _refreshPage();
  // }
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _donorName = TextEditingController();
  final TextEditingController _donorProfession = TextEditingController();
  final TextEditingController _donorMobileNumber = TextEditingController();
  final TextEditingController _donorAddress = TextEditingController();
  final TextEditingController _donorAadharCardNumber = TextEditingController();
  final TextEditingController _donorDisease = TextEditingController();
  final TextEditingController _donorAge = TextEditingController();
  final TextEditingController _donorWeight = TextEditingController();
  final TextEditingController _hospitalName = TextEditingController();
  final TextEditingController _hospitalLocation = TextEditingController();
  final TextEditingController _whoManyTimeBloodDonate = TextEditingController();
  String? _bloodGroup;
  
  @override
  Widget build(BuildContext context) {
    double gape = 15;
    String button = "Submit";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            )),
        title: const Text(
          "Donor Form",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: _donorName,
              decoration: InputDecoration(
                  labelText: "Name",
                  icon: const Icon(Icons.person),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a name.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorProfession,
              decoration: InputDecoration(
                  labelText: "Profession",
                  icon: const Icon(Icons.work),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a profession.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorMobileNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Mobile Number",
                  icon: const Icon(Icons.call),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a number.";
                } else if (value.length == 10) {
                  return null;
                }
                return "Please enter a 10 digit number.";
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorAddress,
              decoration: InputDecoration(
                  labelText: "Address",
                  icon: const Icon(Icons.location_on_outlined),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a name.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorAadharCardNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Aadhar Card Number",
                  icon: const Icon(Icons.credit_card),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a name.";
                } else if (value.length == 12) {
                  return null;
                }
                return "Please enter caret aadhar number.";
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorDisease,
              decoration: InputDecoration(
                  labelText: "Disease",
                  icon: const Icon(Icons.medical_information),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a disease.(or 'NO' type)";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text("Select blood group :",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.deepPurple),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _radioButtion("A+"),
                      _radioButtion("A-"),
                      _radioButtion("B+"),
                      _radioButtion("B-")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _radioButtion("AB+"),
                      _radioButtion("AB-"),
                      _radioButtion("O+"),
                      _radioButtion("O-")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorAge,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Age",
                  icon: const Icon(Icons.perm_contact_cal),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a age.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _donorWeight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Weight",
                  icon: const Icon(Icons.person_pin_rounded),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a weight.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _hospitalName,
              decoration: InputDecoration(
                  labelText: "Hospital Name",
                  icon: const Icon(Icons.local_hospital),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a hospital name.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _hospitalLocation,
              decoration: InputDecoration(
                  labelText: "Hospital Location",
                  icon: const Icon(Icons.add_location_sharp),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a hospital location.";
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _whoManyTimeBloodDonate,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Who many time blood donate",
                  icon: const Icon(Icons.bloodtype_outlined),
                  iconColor: Colors.deepPurple,
                  enabledBorder: TextStyleField.enabledBorder,
                  disabledBorder: TextStyleField.enabledBorder,
                  focusedBorder: TextStyleField.focusedBorder,
                  errorBorder: TextStyleField.errorBorder,
                  focusedErrorBorder: TextStyleField.errorBorder),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a who many time blood donate.";
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate() && _bloodGroup!.isNotEmpty) {
                    addDonorData['Group'] = _bloodGroup;
                    addDonorData['DonorName'] = _donorName.text;
                    addDonorData['DonorPhoneNumber'] = _donorMobileNumber.text;
                    addDonorData['DonorProfession'] = _donorProfession.text;
                    addDonorData['DonorDisease'] = _donorDisease.text;
                    addDonorData['DonorAddress'] = _donorAddress.text;
                    addDonorData['DonorAadharNumber'] = _donorAadharCardNumber.text;
                    addDonorData['BloodReceivesHospital'] = _hospitalName.text;
                    addDonorData['HospitalLocation'] = _hospitalLocation.text;
                    addDonorData['DonorWeight'] = _donorWeight.text;
                    addDonorData['DonorAge'] = _donorAge.text;
                    addDonorData['WhoManyTimeDonate'] = _whoManyTimeBloodDonate.text;
                    await _addItem();
                    // ignore: use_build_context_synchronously
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AddedDonorData()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.deepPurple,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Text(
                  button,  // Assuming 'button' is a variable holding the button text
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    letterSpacing: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _radioButtion (String title){
    return SizedBox(
      child: Row(
        children: [
          Radio(value: title, groupValue: _bloodGroup, onChanged: (value){
            setState(() {
              _bloodGroup = value;
            });
          }),
          Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }

  Future<void> _addItem() async {
    await SQLHelperBloodDonor.createItem(addDonorData);
    // _refreshPage();
  }
}
