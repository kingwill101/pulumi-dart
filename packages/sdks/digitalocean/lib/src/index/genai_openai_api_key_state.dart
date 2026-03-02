// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_openai_api_key_model.dart';

/// Input properties used for looking up and filtering GenaiOpenaiApiKey resources.
class GenaiOpenaiApiKeyState {
  /// The OpenAI API key.
  final pulumi.Input<String>? apiKey;
  /// When the API key was created.
  final pulumi.Input<String>? createdAt;
  /// Who created the API key.
  final pulumi.Input<String>? createdBy;
  /// When the API key was deleted.
  final pulumi.Input<String>? deletedAt;
  /// Models associated with the OpenAI API key
  final pulumi.Input<List<GenaiOpenaiApiKeyModel>>? models;
  /// A name for the API key.
  final pulumi.Input<String>? name;
  /// When the API key was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The UUID of the API key.
  final pulumi.Input<String>? uuid;

  /// Creates a new [GenaiOpenaiApiKeyState].
  /// [apiKey] The OpenAI API key.
  /// [createdAt] When the API key was created.
  /// [createdBy] Who created the API key.
  /// [deletedAt] When the API key was deleted.
  /// [models] Models associated with the OpenAI API key
  /// [name] A name for the API key.
  /// [updatedAt] When the API key was last updated.
  /// [uuid] The UUID of the API key.
  GenaiOpenaiApiKeyState({
    this.apiKey,
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.models,
    this.name,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'deletedAt': ?deletedAt,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GenaiOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GenaiOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GenaiOpenaiApiKeyState.fromMap(Map<String, dynamic> map) {
    return GenaiOpenaiApiKeyState(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      deletedAt: map['deletedAt'] == null ? null : (map['deletedAt'] as String).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GenaiOpenaiApiKeyModel>(map['models'], (value) => GenaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

