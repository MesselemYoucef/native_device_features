import 'package:flutter/material.dart';
import 'package:native_device_features/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import './screens/add_place_screen.dart';

import './provider/great_places.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.amber)),
        home: const PlacesListScreen(),
        routes: {
          AddPlaceScreen.route: (ctx) => const AddPlaceScreen(),
        },
      ),
    );
  }
}
