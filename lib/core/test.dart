import 'package:flutter/material.dart';
import 'package:untitled1/movies/presentation/screens/movies_screen.dart';

class Testing extends StatelessWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text("btn"),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MoviesScreen(),
          ),
        ),
      ),
    );
  }
}
