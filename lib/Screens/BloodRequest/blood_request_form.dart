import 'package:bloodbank/Screens/AddDonor/added_donor_data.dart';
import 'package:bloodbank/Style/textformfield.dart';
import 'package:flutter/material.dart';

class BloodRequestForm extends StatefulWidget {
  const BloodRequestForm({super.key});

  @override
  State<BloodRequestForm> createState() => _BloodRequestFormState();
}

class _BloodRequestFormState extends State<BloodRequestForm> {
  int? _id;
  String? _bloodGroup;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _aadharNumber = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _hospitalName = TextEditingController();
  final TextEditingController _hospitalLocation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double gape = 10;
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
            TextFormField(
              controller: _name,
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
              controller: _phoneNumber,
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
              controller: _age,
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
              controller: _aadharNumber,
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
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text(
                "Select blood group :",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.deepPurple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _radioButtion("A +"),
                      _radioButtion("A -"),
                      _radioButtion("B +"),
                      _radioButtion("B -")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _radioButtion("AB +"),
                      _radioButtion("AB -"),
                      _radioButtion("O +"),
                      _radioButtion("O -")
                    ],
                  )
                ],
              ),
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
              height: gape + gape,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate() && _bloodGroup!.isNotEmpty) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AddedDonorData()));
                }
              },
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.deepPurple,
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _radioButtion(String title) {
    return SizedBox(
      child: Row(
        children: [
          Radio(
              value: title,
              groupValue: _bloodGroup,
              onChanged: (value) {
                setState(() {
                  _bloodGroup = value;
                });
              }),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
