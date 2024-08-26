import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_weather/data/models/app_error.dart';
import 'package:get_weather/data/models/weather_response.dart';
import 'package:get_weather/data/services/location_service.dart';
import 'package:get_weather/data/services/weather_service.dart';
import 'package:injectable/injectable.dart';

/// An interface class for WeatherRepository
abstract class IWeatherRepository {
  Future<Either<AppError, WeatherResponse?>> getWeather(
     Position position);
  Future<Either<AppError, Position>> getLocation();
}

@Injectable(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository{
  final WeatherService weatherService;
  final LocationService locationService;

  WeatherRepository(this.weatherService, this.locationService);
  @override
  Future<Either<AppError, WeatherResponse?>> getWeather(
      Position position) async {
    return weatherService.getWeather(position);
  }
  
  @override
  Future<Either<AppError, Position>> getLocation() async{
    return locationService.getPosition();
  }
}
