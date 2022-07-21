import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash"),
      ),
      body: const Center(
        child: Text("Splash"),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.arrow_right),
        onPressed: () {
          GoRouter.of(context).goNamed("login");
        },
      ),
    );
  }
}
