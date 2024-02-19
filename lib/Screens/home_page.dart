import 'package:bloodbank/Screens/BloodBank/blood_bank.dart';
import 'package:bloodbank/Screens/BloodRequest/blood_request_form.dart';
import 'package:bloodbank/Screens/DonorCard/donor_card.dart';
import 'package:bloodbank/Screens/SearchDonor/select_blood_group.dart';
import 'package:bloodbank/Screens/my_notes.dart';
import 'package:bloodbank/auth/selct_login_register.dart';
import 'package:flutter/material.dart';

import 'AddDonor/donor_form.dart';

List<Map<String, dynamic>> bloodbank = [
  {
    'icon': Icons.credit_card,
    'title': 'Donor Card',
  },
  {
    'icon': Icons.person_add,
    'title': 'Add Donor',
  },
  {
    'icon': Icons.search,
    'title': 'Search Donor',
  },
  {
    'icon': Icons.question_mark,
    'title': 'Blood Request',
  },
  {
    'icon': Icons.account_balance,
    'title': 'Blood Bank',
  },
  {
    'icon': Icons.edit_note,
    'title': 'My Notes',
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double hSize = MediaQuery.of(context).size.height;
    // double wSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Row(
          children: [
            Icon(
              Icons.bloodtype,
              color: Colors.white,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Blood Bank",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1.2),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
          ),
          itemCount: bloodbank.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                switch(bloodbank[index]['title']){
                  case 'Donor Card':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DonorCard()));
                  }break;
                  case 'Add Donor':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DonorForm()));
                  }break;
                  case 'Search Donor':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectBloodGroup()));
                  }break;
                  case 'Blood Request':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BloodRequestForm()));
                  }break;
                  case 'Blood Bank':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BloodBank()));
                  }break;
                  case 'My Notes':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyNotes()));
                  }break;
                }
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(bloodbank[index]['icon'],size: 70,color: Colors.deepPurple,),
                    const SizedBox(height: 7,),
                    Text(bloodbank[index]['title'],style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      // drawerScrimColor: Colors.deepPurpleAccent,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: hSize * 0.06,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "BLOOD BANK",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/icons/manIcon.png"),
              ),
              title: Text(
                "User Name",
                style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Ahmadabad",
                style:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender : Mail",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Profession : Student",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Mobile No : +91 89465165",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 2,
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.bloodtype_sharp,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    " Donation History",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    " Location of Donors",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.stars_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    " Reward Card",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.people,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    " Invite Friends",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            // const Divider(thickness: 1.5,),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.paste_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    " Privacy & Policy",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1.5,),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.call,
                    size: 24,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    " Call",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
            // const Divider(thickness: 1.5,),
            ListTile(
              onTap: () {},
              title: const Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 24,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    " Send Email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2,),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SelectLR()));
              },
              title: const Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 24,
                    color: Colors.red,
                  ),
                  Text(
                    " Logout",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2,),
          ],
        ),
      ),
    );
  }
}
