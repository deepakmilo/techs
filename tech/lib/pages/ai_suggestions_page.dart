import 'package:flutter/material.dart';

class AISuggestionsPage extends StatelessWidget {
  const AISuggestionsPage({super.key});

  final List<Map<String, String>> suggestions = const [
    {'name': 'Simran Kaur', 'skill': 'AI/ML', 'distance': '1.1 km'},
    {'name': 'Om Patel', 'skill': 'Flutter', 'distance': '0.9 km'},
    {'name': 'Ananya Das', 'skill': 'Full Stack', 'distance': '2.3 km'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('AI Suggestions'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: suggestions.length,
        separatorBuilder: (_, __) => const Divider(color: Colors.white24),
        itemBuilder: (context, index) {
          final techie = suggestions[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              techie['name']!,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '${techie['skill']} • ${techie['distance']}',
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(Icons.lightbulb, color: Colors.white38),
          );
        },
      ),
    );
  }
}
