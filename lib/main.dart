import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalInfoApp());
}

class PersonalInfoApp extends StatelessWidget {
  const PersonalInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Info App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PersonalInfoPage(),
    );
  }
}

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Personal Information',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Profile Card Header
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Clean Profile Avatar Icon
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.deepPurple.shade100,
                      child: const Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Dipali Adhikar Patil',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Computer Science Student',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // About Me Section
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_outline, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 20),
                    Text(
                      'Passionate Computer Science student eager to learn application development and modern web technologies. Building projects with Flutter, Dart, and Python.',
                      style: TextStyle(fontSize: 14, height: 1.4),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Skills Section
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.code, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: const [
                        SkillChip(label: 'Flutter'),
                        SkillChip(label: 'Dart'),
                        SkillChip(label: 'Python'),
                        SkillChip(label: 'HTML / CSS'),
                        SkillChip(label: 'Git & GitHub'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Contact Information
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.contacts_outlined, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text(
                          'Contact Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 20),
                    ContactRow(
                      icon: Icons.email,
                      title: 'Email',
                      value: 'dipali@example.com',
                      iconColor: Colors.blue,
                    ),
                    SizedBox(height: 12),
                    ContactRow(
                      icon: Icons.phone,
                      title: 'Phone',
                      value: '+91 XXXXX XXXXX',
                      iconColor: Colors.green,
                    ),
                    SizedBox(height: 12),
                    ContactRow(
                      icon: Icons.location_on,
                      title: 'Location',
                      value: 'Maharashtra, India',
                      iconColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Action Button
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                    label: const Text('Contact Me'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.deepPurple.shade50,
      side: BorderSide(color: Colors.deepPurple.shade200),
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color iconColor;

  const ContactRow({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 22),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }
}