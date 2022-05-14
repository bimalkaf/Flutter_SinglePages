import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notes_app/notes.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Notes"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: gridChildren(),
      ),
    );
  }

  List<Widget> gridChildren() {
    List<Widget> list = [];
    Notes.getListOfNotes().forEach((element) {
      list.add(getNoteCard(element));
    });
    return list;
  }

  Widget getNoteCard(Notes note) {
    //for random color
    int randomColor = Random().nextInt(Notes.notesColor.length - 1);

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Notes.notesColor[randomColor],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            note.date,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              note.content,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
