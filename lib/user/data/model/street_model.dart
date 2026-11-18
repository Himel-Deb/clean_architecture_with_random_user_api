import '../../domain/entities/street_entity.dart';

class StreetModel extends StreetEntity {
  const StreetModel({
    required super.number,
    required super.name,
  });

  factory StreetModel.fromJson(Map<String, dynamic> json) {
    return StreetModel(
      number: json['number'] ?? 0,
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
    };
  }
}