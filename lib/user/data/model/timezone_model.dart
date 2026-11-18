import '../../domain/entities/timezone_entity.dart';

class TimezoneModel extends TimezoneEntity {
  const TimezoneModel({
    required super.offset,
    required super.description,
  });

  factory TimezoneModel.fromJson(Map<String, dynamic> json) {
    return TimezoneModel(
      offset: json['offset'] ?? '',
      description: json['description'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'description': description,
    };
  }
}