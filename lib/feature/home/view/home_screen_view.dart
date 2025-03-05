import 'package:flutter/material.dart';
import 'package:sumanry/util/responsive_helper.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Suman Roy"),),
      body: ResponsiveWidget(
        mobile: Container(
          color: Colors.blue,
          child: const Center(child: Text('Mobile View', style: TextStyle(fontSize: 20, color: Colors.white))),
        ),
        tab: Container(
          color: Colors.green,
          child: const Center(child: Text('Tablet View', style: TextStyle(fontSize: 20, color: Colors.white))),
        ),
        desktop: Container(
          color: Colors.red,
          child: const Center(child: Text('Desktop View', style: TextStyle(fontSize: 20, color: Colors.white))),
        ),
      ),
    );
  }
}
