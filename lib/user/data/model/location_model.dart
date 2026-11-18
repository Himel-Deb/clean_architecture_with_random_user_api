import '../../domain/entities/location_entity.dart';
import 'street_model.dart';
import 'coordinates_model.dart';
import 'timezone_model.dart';

class LocationModel extends LocationEntity {
  const LocationModel({
    required super.street,
    required super.city,
    required super.state,
    required super.country,
    required super.postcode,
    required super.coordinates,
    required super.timezone,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
  return LocationModel(
    street: StreetModel.fromJson(json['street'] ?? {}),
    city: json['city'] ?? '',
    state: json['state'] ?? '',
    country: json['country'] ?? '',
    postcode: json['postcode'] ?? '',
    coordinates: CoordinatesModel.fromJson(
      json['coordinates'] ?? {},
    ),
    timezone: TimezoneModel.fromJson(
      json['timezone'] ?? {},
    ),
  );
}

  Map<String, dynamic> toJson() {
    return {
      'street': (street as StreetModel).toJson(),
      'city': city,
      'state': state,
      'country': country,
      'postcode': postcode,
      'coordinates': (coordinates as CoordinatesModel).toJson(),
      'timezone': (timezone as TimezoneModel).toJson(),
    };
  }
}