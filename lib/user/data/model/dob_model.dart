import '../../domain/entities/dob_entity.dart';

class DobModel extends DobEntity {
  const DobModel({
    required super.date,
    required super.age,
  });

  factory DobModel.fromJson(Map<String, dynamic> json) {
    return DobModel(
      date: json['date'] ?? '',
      age: json['age'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'age': age,
    };
  }
}