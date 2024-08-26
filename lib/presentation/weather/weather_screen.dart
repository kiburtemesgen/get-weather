import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_weather/core/helpers/converters.dart';
import 'package:get_weather/presentation/weather/weather_bloc/weather_bloc.dart';
import 'package:get_weather/core/extensions/date_extension.dart';
import 'package:get_weather/presentation/widgets/weather_icon.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(WeatherEvent.getWeather());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecast'),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.error != null) {
            return Text(state.error!.message ?? 'Error happened');
          } else if (state.weatherResponse != null) {
            return ListView.builder(
              itemCount: state.weatherResponse!.list.length,
              itemBuilder: (context, index) {
                final item = state.weatherResponse!.list[index];
                final date = DateTime.fromMillisecondsSinceEpoch(item.dt * 1000)
                    .weatherFormat;
                final temperature = item.main.temp;
                final description = item.weather.first.description ?? '';
                final icon = item.weather.first.icon ?? '';

                return ListTile(
                  leading: WeatherIcon(icon: icon),
                  title: Text(date),
                  subtitle: Text(description),
                  trailing: Text('${kelvinToCelsius(temperature!)} °C"'),
                );
              },
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
