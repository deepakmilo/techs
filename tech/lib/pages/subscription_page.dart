import 'package:flutter/material.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  final List<Map<String, dynamic>> plans = const [
    {
      'title': 'Basic',
      'price': 'Free',
      'features': ['Limited chat access', 'View nearby techies']
    },
    {
      'title': 'Pro',
      'price': '₹199/mo',
      'features': ['Unlimited chats', 'AI Suggestions', 'Priority visibility']
    },
    {
      'title': 'Premium',
      'price': '₹499/mo',
      'features': ['Everything in Pro', 'Beta features', 'Personalized insights']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Subscriptions'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: plans.length,
        itemBuilder: (context, index) {
          final plan = plans[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plan['title'],
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  plan['price'],
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 10),
                ...List.generate(
                  (plan['features'] as List).length,
                  (i) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.5),
                    child: Row(
                      children: [
                        const Icon(Icons.check, size: 16, color: Colors.white54),
                        const SizedBox(width: 6),
                        Text(
                          plan['features'][i],
                          style: const TextStyle(fontSize: 14, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
