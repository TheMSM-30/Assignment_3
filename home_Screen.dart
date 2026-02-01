import 'package:flutter/material.dart';

import 'card_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> courses = [
  {
  'title': "Full Stack Web Development with JavaScript (MERN)",
  'subtitle': "Full Stack Web Development",
  'imageUrl': "https://images.unsplash.com/photo-1517694712202-14dd9538aa97",
  'batch': 19,
  'seats': 16,
  'days': 60,
},
    {
      'title': "Full Stack Web Development with Python, Django & React",
     'subtitle': "Full Stack Web Development",
     'imageUrl': "https://cdn.ostad.app/course/cover/2025-12-08T14-31-25.697Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg",
      'batch': 18,
      'seats': 18,
      'days': 40,
    },

    {
      'title': "Full Stack Web Development with ASP.NET Core",
      'subtitle': "Full Stack Web Development",
      'imageUrl': "https://images.unsplash.com/photo-1555949963-aa79dcee981c",
      'batch': 17,
      'seats': 20,
      'days': 90,
    },

    {
      'title': "SQA: Manual & Automated Testing",
      'subtitle': "Software Quality Assurance",
      'imageUrl': "https://bitm.org.bd/storage/thumbnail/WNKYSPi5lVlQPzlmYsX9I20fY9MrsrE0PlL7S7Ak.jpg",
      'batch': 16,
      'seats': 14,
      'days': 45,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Courses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.60,
              mainAxisExtent: 360
          ),
          itemBuilder: (context, index) {
            return CourseCard(
              title: courses[index]['title'],
              //subtitle: courses[index]['subtitle'],
              imageUrl: courses[index]['imageUrl'],
              batch: courses[index]['batch'],
              seats: courses[index]['seats'],
              days: courses[index]['days'],);
          },
        ),
      ),
    );
  }
}
