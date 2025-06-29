import 'package:flutter/material.dart';
import 'nearby_techies_page.dart';
import 'chat_screen.dart';
import 'subscription_page.dart';
import 'ai_suggestions_page.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // ensure black background
      appBar: AppBar(
        title: const Text('TechSpace'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to TechSpace',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'TechSpace helps you discover and connect with nearby developers using geo-location.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 30),
              const Text('Features:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  final cardWidth = width < 400 ? width : (width / 2) - 20;

                  return Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      FeatureCard(
                        icon: Icons.location_on,
                        title: 'Find Techies Nearby',
                        description: 'Discover developers around your location.',
                        width: cardWidth,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) =>  NearbyTechiesPage()));
                        },
                      ),
                      FeatureCard(
                        icon: Icons.chat_bubble_outline,
                        title: 'Chat',
                        description: 'Message techies instantly.',
                        width: cardWidth,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) =>  ChatScreen()));
                        },
                      ),
                      FeatureCard(
                        icon: Icons.subscriptions_outlined,
                        title: 'Subscriptions',
                        description: 'Get premium access to exclusive content.',
                        width: cardWidth,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) =>  SubscriptionPage()));
                        },
                      ),
                      FeatureCard(
                        icon: Icons.lightbulb_outline,
                        title: 'AI Suggestions',
                        description: 'Let AI recommend connections.',
                        width: cardWidth,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) =>  AISuggestionsPage()));
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback? onTap;
  final double width;

  const FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
    this.onTap,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 32, color: Colors.white),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 5),
            Text(description, textAlign: TextAlign.center, style: const TextStyle(fontSize: 13, color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}
