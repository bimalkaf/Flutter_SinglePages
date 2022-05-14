import 'package:flutter/material.dart';

class Notes {
  String title;
  String date;
  String content;

  Notes({required this.title, required this.date, required this.content});

  static List<Notes> getListOfNotes() {
    List<Notes> list = [];
    list.add(Notes(
        title: "My seventh Note",
        date: "07/01/2021",
        content: "This is my very first note in my flutter application"));
    list.add(Notes(
        title: "My sixth Note",
        date: "06/01/2021",
        content: "This is my very first note in my flutter application"));
    list.add(Notes(
        title: "My fifth Note",
        date: "05/01/2021",
        content: "This is my very first note in my flutter application"));
    list.add(Notes(
        title: "My forth Note",
        date: "04/01/2021",
        content: "This is my very first note in my flutter application"));
    list.add(Notes(
        title: "My third Note",
        date: "03/01/2021",
        content: "This is my very first note in my flutter application"));
    list.add(Notes(
        title: "Meeting",
        date: "02/01/2021",
        content: "Meeting is posponed to 4th Feb"));
    list.add(Notes(
        title: "My first Note",
        date: "01/01/2021",
        content: "This is my very first note in my flutter application"));
    return list;
  }

  static List<Color> notesColor = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.yellow.shade100,
    Colors.orange.shade100,
    Colors.pink.shade100,
    Colors.blueGrey.shade100,
  ];
}
