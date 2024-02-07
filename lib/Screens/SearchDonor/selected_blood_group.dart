import 'package:bloodbank/Data/a_negative_group.dart';
import 'package:bloodbank/Data/a_positive_group.dart';
import 'package:bloodbank/Data/ab_negative_group.dart';
import 'package:bloodbank/Data/ab_positive_group.dart';
import 'package:bloodbank/Data/b_negative_group.dart';
import 'package:bloodbank/Data/b_positive_group.dart';
import 'package:bloodbank/Data/bloodgroup.dart';
import 'package:bloodbank/Data/o_positive_group.dart';
import 'package:flutter/material.dart';
import '../../Data/o_negative_group.dart';

class SelectedBloodGroup extends StatefulWidget {
  final String bloodGroup;
  const SelectedBloodGroup({super.key,required this.bloodGroup});

  @override
  State<SelectedBloodGroup> createState() => _SelectedBloodGroupState();
}

class _SelectedBloodGroupState extends State<SelectedBloodGroup> {
  List<BloodGroup> selectedBloodGroupData = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch(widget.bloodGroup){
      case 'A+':{
        selectedBloodGroupData.addAll(aPositiveGroup);
      }break;
      case 'A-':{
        selectedBloodGroupData.addAll(aNegativeGroup);
      }break;
      case 'B+':{
        selectedBloodGroupData.addAll(bPositiveGroup);
      }break;
      case 'B-':{
        selectedBloodGroupData.addAll(bNegativeGroup);
      }break;
      case 'AB+':{
        selectedBloodGroupData.addAll(abPositiveGroup);
      }break;
      case 'AB-':{
        selectedBloodGroupData.addAll(abNegativeGroup);
      }break;
      case 'O+':{
        selectedBloodGroupData.addAll(oPositiveGroup);
      }break;
      case 'O-':{
        selectedBloodGroupData.addAll(oNegativeGroup);
      }break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 30,)),
        title: Text("Blood Group ${widget.bloodGroup}",style: const TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
      ),
      body: ListView.builder(
        itemCount: selectedBloodGroupData.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(widget.bloodGroup),
              ),
              title: Text(selectedBloodGroupData[index].donorName.toString()),
              subtitle: Text("${selectedBloodGroupData[index].bloodReceivesHospital.toString()} -> ${selectedBloodGroupData[index].hospitalLocation.toString()} "),
            ),
          );
        },
      ),
    );
  }
}
