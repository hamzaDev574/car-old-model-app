import 'package:flutter/material.dart';
class MedalScreen extends StatefulWidget {
  const MedalScreen({Key? key}) : super(key: key);

  @override
  State<MedalScreen> createState() => _MedalScreenState();
}

class _MedalScreenState extends State<MedalScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: Text('medal'))
      ],
    );
    
  }
}