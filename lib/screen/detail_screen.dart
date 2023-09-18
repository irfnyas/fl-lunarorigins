import 'package:flutter/material.dart';

import '../helper/lunar_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.lunar});
  final Lunar lunar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lunar.name),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 600),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/${lunar.image}.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 24),
              Text(lunar.detail),
            ],
          ),
        ),
      ),
    );
  }
}
