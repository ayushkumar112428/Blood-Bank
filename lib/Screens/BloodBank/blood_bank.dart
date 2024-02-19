import 'package:bloodbank/Data/hospital_data.dart';
import 'package:flutter/material.dart';

class BloodBank extends StatefulWidget {
  const BloodBank({super.key});

  @override
  State<BloodBank> createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 30,)),
        title: const Text("Blood Bank",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
      ),
      body: ListView.builder(
        itemCount: hospitalData.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Text("H"),
              ),
              title: Text(hospitalData[index].hospitalName.toString()),
              subtitle: Text(hospitalData[index].hospitalLocation.toString()),
            ),
          );
        },
      ),
    );
  }
}
