// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_openai_api_key_model.dart';

/// Result data returned by getGradientaiOpenaiApiKey.
class GetGradientaiOpenaiApiKeyResult {
  final String createdAt;
  final String createdBy;
  final String deletedAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiOpenaiApiKeyModel> models;
  final String name;
  final String updatedAt;
  final String uuid;

  /// Creates a new [GetGradientaiOpenaiApiKeyResult].
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [deletedAt] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [models] Required.
  /// [name] Required.
  /// [updatedAt] Required.
  /// [uuid] Required.
  GetGradientaiOpenaiApiKeyResult({
    required this.createdAt,
    required this.createdBy,
    required this.deletedAt,
    required this.id,
    required this.models,
    required this.name,
    required this.updatedAt,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'createdBy': createdBy,
      'deletedAt': deletedAt,
      'id': id,
      'models': pulumi.Input.encodeList<GetGradientaiOpenaiApiKeyModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGradientaiOpenaiApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeyResult(
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      deletedAt: map['deletedAt'] as String,
      id: map['id'] as String,
      models: pulumi.Input.decodeList<GetGradientaiOpenaiApiKeyModel>(map['models']!, (value) => GetGradientaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

