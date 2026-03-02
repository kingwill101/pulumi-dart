// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_openai_api_keys_openai_api_key_model.dart';

class GetGradientaiOpenaiApiKeysOpenaiApiKey {
  /// Timestamp when the API Key was created
  final pulumi.Input<String> createdAt;
  /// Created By user ID for the API Key
  final pulumi.Input<String> createdBy;
  /// Deleted At timestamp for the API Key
  final pulumi.Input<String> deletedAt;
  /// List of models associated with the API Key
  final pulumi.Input<List<GetGradientaiOpenaiApiKeysOpenaiApiKeyModel>> models;
  /// Name of the API Key
  final pulumi.Input<String> name;
  /// Updated At timestamp for the API Key
  final pulumi.Input<String> updatedAt;
  /// OpenAI API Key Uuid
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiOpenaiApiKeysOpenaiApiKey].
  /// [createdAt] Timestamp when the API Key was created
  /// [createdBy] Created By user ID for the API Key
  /// [deletedAt] Deleted At timestamp for the API Key
  /// [models] List of models associated with the API Key
  /// [name] Name of the API Key
  /// [updatedAt] Updated At timestamp for the API Key
  /// [uuid] OpenAI API Key Uuid
  GetGradientaiOpenaiApiKeysOpenaiApiKey({
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
      'models': pulumi.Input.mapInputValue<List<GetGradientaiOpenaiApiKeysOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGradientaiOpenaiApiKeysOpenaiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeysOpenaiApiKey(
      createdAt: (map['createdAt'] as String).input(),
      createdBy: (map['createdBy'] as String).input(),
      deletedAt: (map['deletedAt'] as String).input(),
      models: (pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysOpenaiApiKeyModel>(map['models'], (value) => GetGradientaiOpenaiApiKeysOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uuid: (map['uuid'] as String).input(),
    );
  }
}

