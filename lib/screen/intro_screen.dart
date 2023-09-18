import 'package:flutter/material.dart';

import '../helper/data.dart';
import 'detail_screen.dart';
import 'month_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void navToMonthScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const MonthScreen(),
      ),
    );

    if (searchController.text.isEmpty) return;

    final lunarIndex = lunarList.indexWhere(
      (e) => e.enName.toLowerCase().startsWith(
            searchController.text.toLowerCase(),
          ),
    );

    searchController.clear();
    if (lunarIndex == -1) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Sorry, we couldn\'t find any lunar that start with \'${searchController.text}\'',
          ),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailScreen(
          lunar: lunarList[lunarIndex],
        ),
      ),
    );

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lunar Origins',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 24),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 400),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        textInputAction: TextInputAction.go,
                        onSubmitted: (_) => navToMonthScreen(),
                        decoration: InputDecoration(
                          label: const Text('What\'s your favorite month?'),
                          hintText: 'e.g. January',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton.outlined(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.navigate_next),
                      onPressed: () => navToMonthScreen(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
