import 'package:flutter/material.dart';

class NearbyTechiesPage extends StatelessWidget {
  const NearbyTechiesPage({super.key});

  final List<Map<String, String>> techies = const [
    {'name': 'Aarav Shah', 'skill': 'Flutter Developer', 'distance': '0.4 km'},
    {'name': 'Riya Mehta', 'skill': 'Backend Engineer', 'distance': '1.1 km'},
    {'name': 'Kabir Verma', 'skill': 'UI/UX Designer', 'distance': '1.6 km'},
    {'name': 'Ananya Singh', 'skill': 'AI/ML Enthusiast', 'distance': '2.2 km'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Nearby Techies'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: techies.length,
        separatorBuilder: (_, __) => const Divider(color: Colors.white24),
        itemBuilder: (context, index) {
          final techie = techies[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              techie['name']!,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '${techie['skill']} • ${techie['distance']}',
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(Icons.location_on, color: Colors.white54),
            onTap: () {
              // Optional: add detailed profile popup or map view
            },
          );
        },
      ),
    );
  }
}
