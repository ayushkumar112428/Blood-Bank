import 'package:bloodbank/Screens/SearchDonor/selected_blood_group.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> bloodGroup = [
  {
    'id': 1,
    'group': "A+",
  },
  {
    'id': 2,
    'group': "A-",
  },
  {
    'id': 3,
    'group': "B+",
  },
  {
    'id': 4,
    'group': "B-",
  },
  {
    'id': 5,
    'group': "AB+",
  },
  {
    'id': 6,
    'group': "AB-",
  },
  {
    'id': 7,
    'group': "O+",
  },
  {
    'id': 8,
    'group': "O-",
  },
];

class SelectBloodGroup extends StatelessWidget {
  const SelectBloodGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 30,)),
        title: const Text("Select a blood group",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
          ),
          itemCount: bloodGroup.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                switch(bloodGroup[index]['group']){
                  case 'A+':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'A-':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'B+':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'B-':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'AB+':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'AB-':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'O+':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                  case 'O-':{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedBloodGroup(bloodGroup: bloodGroup[index]['group'])));
                  }break;
                }
              },
              child: Card(
                color: Colors.deepPurple,
                elevation: 3,
                child: Center(
                  child: Text(
                    bloodGroup[index]['group'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 70,color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
