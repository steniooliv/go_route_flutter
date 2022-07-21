import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Center(
        child: Text("Login"),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.arrow_right),
        onPressed: () {
          GoRouter.of(context).goNamed("home");
        },
      ),
    );
  }
}
