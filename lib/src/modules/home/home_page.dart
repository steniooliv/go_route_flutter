import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).pushNamed("courses");
          },
          child: const Text("Cursos"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_left),
            onPressed: () {
              if (GoRouter.of(context).canPop()) {
                GoRouter.of(context).pop();
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              GoRouter.of(context).pushNamed("profile");
            },
          ),
        ],
      ),
    );
  }
}
