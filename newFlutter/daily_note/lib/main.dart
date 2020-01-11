import 'package:daily_note/Note_Related/ListOf_Note.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Daily Routine",
        home: NoteList(),
          theme: ThemeData(
              primarySwatch: Colors.deepPurple
          )
      )
  );
}

