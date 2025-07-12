import 'package:flutter/material.dart';

class DiaryScreen extends StatefulWidget {
  @override
  _DiaryScreenState createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  final TextEditingController _moodController = TextEditingController();
  final TextEditingController _bpController = TextEditingController();
  final TextEditingController _sugarController = TextEditingController();
  final TextEditingController _medReminderController = TextEditingController();

  List<String> _diaryEntries = [];

  void _saveEntry() {
    String entry =
        "Mood: ${_moodController.text}, "
        "BP: ${_bpController.text}, "
        "Sugar: ${_sugarController.text}, "
        "Meds: ${_medReminderController.text}";

    setState(() {
      _diaryEntries.insert(0, entry);
    });

    _moodController.clear();
    _bpController.clear();
    _sugarController.clear();
    _medReminderController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Log Your Wellness",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _moodController,
              decoration: InputDecoration(labelText: "How do you feel today?"),
            ),
            TextField(
              controller: _bpController,
              decoration: InputDecoration(
                labelText: "Blood Pressure (e.g. 120/80)",
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _sugarController,
              decoration: InputDecoration(labelText: "Blood Sugar (mmol/L)"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _medReminderController,
              decoration: InputDecoration(
                labelText: "Medicine Reminder (e.g. Panadol 8am)",
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveEntry,
              child: Text("Save Entry"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            ),
            SizedBox(height: 24),
            Text(
              "Previous Logs:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ..._diaryEntries.map(
              (entry) =>
                  ListTile(leading: Icon(Icons.note), title: Text(entry)),
            ),
          ],
        ),
      ),
    );
  }
}
