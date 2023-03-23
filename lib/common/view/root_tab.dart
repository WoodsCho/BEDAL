import 'package:flutter/material.dart';
import 'package:toonflix/common/lay%20out/default_layout.dart';

class RootTab extends StatelessWidget {
  const RootTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      title: '코팩 딜리버리',
      child: Center(
        child: Text('Root Tab'),
      ),
    );
  }
}
