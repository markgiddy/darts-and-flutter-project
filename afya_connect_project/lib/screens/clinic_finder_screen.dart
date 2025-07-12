import 'package:flutter/material.dart';

class Clinic {
  final String name;
  final String location;
  final double distanceKm;
  final bool isFree;
  final double rating;

  Clinic({
    required this.name,
    required this.location,
    required this.distanceKm,
    required this.isFree,
    required this.rating,
  });
}

class ClinicFinderScreen extends StatelessWidget {
  final List<Clinic> clinics = [
    Clinic(
      name: "Kenyatta National Hospital",
      location: "Nairobi",
      distanceKm: 2.5,
      isFree: false,
      rating: 4.5,
    ),
    Clinic(
      name: "Mbagathi Health Centre",
      location: "Nairobi West",
      distanceKm: 1.8,
      isFree: true,
      rating: 4.0,
    ),
    Clinic(
      name: "Pumwani Maternity Hospital",
      location: "Eastleigh",
      distanceKm: 3.0,
      isFree: true,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: clinics.length,
      itemBuilder: (context, index) {
        final clinic = clinics[index];
        return Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: Icon(
              Icons.local_hospital,
              color: clinic.isFree ? Colors.green : Colors.redAccent,
            ),
            title: Text(clinic.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Location: ${clinic.location}"),
                Text("Distance: ${clinic.distanceKm.toStringAsFixed(1)} km"),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text("${clinic.rating}/5"),
                    SizedBox(width: 12),
                    Text(
                      clinic.isFree ? "Free" : "Affordable",
                      style: TextStyle(
                        color: clinic.isFree ? Colors.green : Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // You can expand to show clinic detail here
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Call or visit ${clinic.name}")),
              );
            },
          ),
        );
      },
    );
  }
}
