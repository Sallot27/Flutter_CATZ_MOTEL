import 'package:catz_motelz/Model/Cat.dart';
import 'package:flutter/material.dart';

import '../Widgets/Catz_info.dart';

class CatzDetails extends StatelessWidget {
  final Cattz cat;
  const CatzDetails({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
      ),
      body: CatzinfoWidget(cat: cat),
    );
  }
}
