import '../../domain/entities/id_entity.dart';

class IdModel extends IdEntity {
  const IdModel({
    required super.name,
    required super.value,
  });

  factory IdModel.fromJson(Map<String, dynamic> json) {
    return IdModel(
      name: json['name'] ?? '',
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}