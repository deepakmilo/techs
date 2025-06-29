import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // consistent dark background
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white24,
            child: Text('D', style: TextStyle(fontSize: 32, color: Colors.white)),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text('Deepak K', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          const Center(
            child: Text('deepak@example.com', style: TextStyle(fontSize: 16, color: Colors.white70)),
          ),
          const SizedBox(height: 24),
          const Divider(color: Colors.white24),

          _settingsTile(
            icon: Icons.person,
            title: 'Edit Profile',
            onTap: () {},
          ),
          _settingsTile(
            icon: Icons.lock,
            title: 'Change Password',
            onTap: () {},
          ),
          _settingsTile(
            icon: Icons.palette,
            title: 'App Theme',
            trailing: Switch(value: true, onChanged: (v) {}),
          ),
          _settingsTile(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () {
              // logout logic here
            },
          ),
        ],
      ),
    );
  }

  Widget _settingsTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white38),
      onTap: onTap,
    );
  }
}
