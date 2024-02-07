import 'package:bloodbank/Data/note_data.dart';
import 'package:flutter/material.dart';

class MyNotes extends StatefulWidget {
  const MyNotes({super.key});

  @override
  State<MyNotes> createState() => _MyNotesState();
}

class _MyNotesState extends State<MyNotes> {
  TextEditingController notes = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (notesData['data'] != null) {
      notes.text = notesData['data'].toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            onPressed: () {
              notesData['data'] = notes.text;
              // print(notesData['data']);
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            )),
        title: const Text(
          "Notes",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                maxLines: null,
                controller: notes,
                decoration: const InputDecoration(
                  hintText: "type some thing ....",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
