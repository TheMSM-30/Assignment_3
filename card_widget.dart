import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  //final String subtitle;
  final String imageUrl;
  final int batch;
  final int seats;
  final int days;

  const CourseCard({
    super.key,
    required this.title,
    //required this.subtitle,
    required this.imageUrl,
    required this.batch,
    required this.seats,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),

                  Text(
                    title,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ✅ FIXED: Wrap instead of Row
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      infoChip("Batch $batch"),
                      infoChip("$seats seats"),
                      infoChip("$days days"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("View Details"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget infoChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 11),
      ),
    );
  }
}
