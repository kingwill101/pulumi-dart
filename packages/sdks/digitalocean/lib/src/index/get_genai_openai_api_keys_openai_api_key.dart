// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_openai_api_keys_openai_api_key_model.dart';

class GetGenaiOpenaiApiKeysOpenaiApiKey {
  /// Timestamp when the API Key was created
  final pulumi.Input<String> createdAt;
  /// Created By user ID for the API Key
  final pulumi.Input<String> createdBy;
  /// Deleted At timestamp for the API Key
  final pulumi.Input<String> deletedAt;
  /// List of models associated with the API Key
  final pulumi.Input<List<GetGenaiOpenaiApiKeysOpenaiApiKeyModel>> models;
  /// Name of the API Key
  final pulumi.Input<String> name;
  /// Updated At timestamp for the API Key
  final pulumi.Input<String> updatedAt;
  /// OpenAI API Key Uuid
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGenaiOpenaiApiKeysOpenaiApiKey].
  /// [createdAt] Timestamp when the API Key was created
  /// [createdBy] Created By user ID for the API Key
  /// [deletedAt] Deleted At timestamp for the API Key
  /// [models] List of models associated with the API Key
  /// [name] Name of the API Key
  /// [updatedAt] Updated At timestamp for the API Key
  /// [uuid] OpenAI API Key Uuid
  const GetGenaiOpenaiApiKeysOpenaiApiKey({
    required this.createdAt,
    required this.createdBy,
    required this.deletedAt,
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
      'models': pulumi.Input.mapInputValue<List<GetGenaiOpenaiApiKeysOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGenaiOpenaiApiKeysOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGenaiOpenaiApiKeysOpenaiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeysOpenaiApiKey(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiOpenaiApiKeysOpenaiApiKeyModel>(map['models']!, (value) => GetGenaiOpenaiApiKeysOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

