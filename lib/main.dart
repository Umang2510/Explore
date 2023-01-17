import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'providers/great_places.dart';
import 'Screens/places_list_screen.dart';
import 'Screens/add_place_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatePlaces(),
      child: MaterialApp(
        title: 'Explore',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
        ),
        home: const PlacesListScreen(),
        routes: {
          AddPalceScreen.rountName: (context) => const AddPalceScreen(),
        },
      ),
    );
  }
}
