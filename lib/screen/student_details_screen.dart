import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  // final _gap =
  String? city;
  final items = [
    const DropdownMenuItem(
      value: 'Kathmandu',
      child: Text('Kathmandu'),
    ),
    const DropdownMenuItem(
      value: 'Pokhara',
      child: Text('Pokhara'),
    ),
    const DropdownMenuItem(
      value: 'Chitwan',
      child: Text('Chitwan'),
    ),
  ];
  // List <Student> student = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Management'),
        backgroundColor: Colors.blue,
      ),
      // body: DropdownButtonFormField(
      //   icon: const Icon(Icons.arrow_downward),
      //   items: items,
      //   onChanged: (value) {
      //     setState(() {
      //       city = value;
      //     });
      //   },
      //   hint: const Text('Select City'),
      //   decoration: const InputDecoration(
      //     labelText: 'Select City',
      //     border: OutlineInputBorder(),
      //   ),
      //   validator: (value) {
      //     if (value == null) {
      //       return 'Please select city';
      //     }
      //     return null;
      //   },
      // ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Enter a first name'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text('Enter a last name'), border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 8,
          ),
          DropdownButtonFormField(
            icon: const Icon(Icons.arrow_downward),
            items: items,
            onChanged: (value) {
              setState(() {
                city = value;
              });
            },
            hint: const Text('Select City'),
            decoration: const InputDecoration(
              labelText: 'Select City',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null) {
                return 'Please select city';
              }
              return null;
            },
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Add Student'),
            ),
          ),
        ],
      ),
    );
  }
}
