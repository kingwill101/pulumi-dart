// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_openai_api_key_model.dart';

/// Result data returned by getGenaiOpenaiApiKey.
class GetGenaiOpenaiApiKeyResult {
  final String createdAt;
  final String createdBy;
  final String deletedAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiOpenaiApiKeyModel> models;
  final String name;
  final String updatedAt;
  final String uuid;

  /// Creates a new [GetGenaiOpenaiApiKeyResult].
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [deletedAt] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [models] Required.
  /// [name] Required.
  /// [updatedAt] Required.
  /// [uuid] Required.
  const GetGenaiOpenaiApiKeyResult({
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
      'models': pulumi.Input.encodeList<GetGenaiOpenaiApiKeyModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGenaiOpenaiApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeyResult(
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      deletedAt: map['deletedAt'] as String,
      id: map['id'] as String,
      models: pulumi.Input.decodeList<GetGenaiOpenaiApiKeyModel>(map['models']!, (value) => GetGenaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

