import '../../domain/entities/info_entity.dart';

class InfoModel extends InfoEntity {
  const InfoModel({
    required super.seed,
    required super.results,
    required super.page,
    required super.version,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return InfoModel(
      seed: json['seed'] ?? '',
      results: json['results'] ?? 0,
      page: json['page'] ?? 0,
      version: json['version'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'seed': seed,
      'results': results,
      'page': page,
      'version': version,
    };
  }
}