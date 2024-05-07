import 'package:bloodbank/Sqflite/sql_helper.dart';
import 'package:flutter/material.dart';

class SelectedBloodGroup extends StatefulWidget {
  final String bloodGroup;
  const SelectedBloodGroup({super.key, required this.bloodGroup});

  @override
  State<SelectedBloodGroup> createState() => _SelectedBloodGroupState();
}

class _SelectedBloodGroupState extends State<SelectedBloodGroup> {
  // List<BloodGroup> selectedBloodGroupData = [];
  List<Map<String, dynamic>> _donorData = [];
  List<Map<String, dynamic>> groupOfData = [];
  void _refreshPage() async {
    final data = await SQLHelperBloodDonor.getItems();
    setState(() {
      _donorData = data;
    });
    _refreshData();
  }

  void _refreshData() async {
    setState(() {
      for (var donor in _donorData) {
        switch (donor['Group']) {
          case 'A+':
            {
              groupOfData.add(donor);
            }
            break;
          case 'A-':
            {
              groupOfData.add(donor);
            }
            break;
          case 'B+':
            {
              groupOfData.add(donor);
            }
            break;
          case 'B-':
            {
              groupOfData.add(donor);
            }
            break;
          case 'AB+':
            {
              groupOfData.add(donor);
            }
            break;
          case 'AB-':
            {
              groupOfData.add(donor);
            }
            break;
          case 'O+':
            {
              groupOfData.add(donor);
            }
            break;
          case 'O-':
            {
              groupOfData.add(donor);
            }
            break;
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshPage();
    // switch (widget.bloodGroup) {
    //   case 'A+':
    //     {
    //       selectedBloodGroupData.addAll(aPositiveGroup);
    //     }
    //     break;
    //   case 'A-':
    //     {
    //       selectedBloodGroupData.addAll(aNegativeGroup);
    //     }
    //     break;
    //   case 'B+':
    //     {
    //       selectedBloodGroupData.addAll(bPositiveGroup);
    //     }
    //     break;
    //   case 'B-':
    //     {
    //       selectedBloodGroupData.addAll(bNegativeGroup);
    //     }
    //     break;
    //   case 'AB+':
    //     {
    //       selectedBloodGroupData.addAll(abPositiveGroup);
    //     }
    //     break;
    //   case 'AB-':
    //     {
    //       selectedBloodGroupData.addAll(abNegativeGroup);
    //     }
    //     break;
    //   case 'O+':
    //     {
    //       selectedBloodGroupData.addAll(oPositiveGroup);
    //     }
    //     break;
    //   case 'O-':
    //     {
    //       selectedBloodGroupData.addAll(oNegativeGroup);
    //     }
    //     break;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            )),
        title: Text(
          "Blood Group ${widget.bloodGroup}",
          style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: selectedBloodGroupData.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(
          //           leading: CircleAvatar(
          //             child: Text(widget.bloodGroup),
          //           ),
          //           title: Text(
          //               selectedBloodGroupData[index].donorName.toString()),
          //           subtitle: Text(
          //               "${selectedBloodGroupData[index].bloodReceivesHospital.toString()} -> ${selectedBloodGroupData[index].hospitalLocation.toString()} "),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: _donorData.length,
              itemBuilder: (context, index) {
                if(_donorData[index]['Group']=='A+' && widget.bloodGroup ==  'A+'){
                  return Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Text('A+'),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='A-' && widget.bloodGroup ==  'A-'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='B+' && widget.bloodGroup ==  'B+'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='B-' && widget.bloodGroup ==  'B-'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='AB+' && widget.bloodGroup ==  'AB+'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='AB-' && widget.bloodGroup ==  'AB-'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='O+' && widget.bloodGroup ==  'O+'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else if(_donorData[index]['Group']=='O-' && widget.bloodGroup ==  'O-'){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_donorData[index]['Group']),
                      ),
                      title: Text(_donorData[index]['DonorName']),
                      subtitle: Text(
                          "${_donorData[index]['BloodReceivesHospital']} -> ${groupOfData[index]['HospitalLocation']} "),
                    ),
                  );
                }else{
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
