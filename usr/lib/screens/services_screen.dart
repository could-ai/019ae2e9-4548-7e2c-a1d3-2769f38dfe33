import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {'icon': Icons.child_care, 'title': 'Child Care', 'desc': 'Safe and fun environment for kids.'},
      {'icon': Icons.fitness_center, 'title': 'Fitness', 'desc': 'Gym and yoga classes available.'},
      {'icon': Icons.book, 'title': 'Library', 'desc': 'Books, digital resources, and study areas.'},
      {'icon': Icons.medical_services, 'title': 'Health Clinic', 'desc': 'Basic health checkups and advice.'},
      {'icon': Icons.restaurant, 'title': 'Cafeteria', 'desc': 'Healthy meals and snacks.'},
      {'icon': Icons.computer, 'title': 'Computer Lab', 'desc': 'Internet access and printing services.'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return Card(
            elevation: 2,
            child: InkWell(
              onTap: () {
                // Navigate to details
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      service['icon'],
                      size: 48,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      service['title'],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      service['desc'],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
