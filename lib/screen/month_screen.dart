import 'package:flutter/material.dart';

import '../helper/data.dart';
import 'detail_screen.dart';

class MonthScreen extends StatelessWidget {
  const MonthScreen({super.key, this.openIndex});
  final int? openIndex;

  @override
  Widget build(BuildContext context) {
    void navToDetail(int i) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailScreen(
            lunar: lunarList[i],
          ),
        ),
      );
    }

    final count = MediaQuery.of(context).size.width > 840 ? 4 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lunar Origins'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          childAspectRatio: 1,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: lunarList.length,
        itemBuilder: (_, i) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/${lunarList[i].image}.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Chip(
                  visualDensity: VisualDensity.compact,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(44),
                  ),
                  side: BorderSide.none,
                  label: Text(
                    lunarList[i].name,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => navToDetail(i),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
