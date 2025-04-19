import 'package:bloc_demo/weather_app/bloc/weather_bloc.dart';
import 'package:bloc_demo/weather_app/data/data_provider/weather_data_provider.dart';
import 'package:bloc_demo/weather_app/data/repository/weather_repository.dart';
import 'package:bloc_demo/weather_app/presentation/screens/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepository(
        WeatherDataProvider(),
      ),
      child: BlocProvider(
        create: (context) => WeatherBloc(
          context.read<WeatherRepository>(),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(useMaterial3: true),
          home: const WeatherScreen(),
        ),
      ),
    );
  }
}
