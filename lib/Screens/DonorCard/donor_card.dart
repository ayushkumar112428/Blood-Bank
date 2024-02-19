import 'package:flutter/material.dart';

class DonorCard extends StatelessWidget {
  const DonorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 30,)),
        title: const Text("Donor Card",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 20),
        child: SizedBox(
          height: 300,
          child: Card(
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/img/ayushpatel.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12,),
                      SizedBox(
                        height: 140,
                        width: MediaQuery.of(context).size.width*0.5,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Patel Ayushkumar Harshadbhai",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                              Text("2003-07-22",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                              Text("Male",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                              Text("xxxxxxxx2353",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Divider(),
                  ),
                  const Text("Address:",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  const Text("Devasya, Nikol, Ahmedabad",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
