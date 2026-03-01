// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_openai_api_key_model.dart';

/// Input properties used for looking up and filtering GradientaiOpenaiApiKey resources.
class GradientaiOpenaiApiKeyState {
  /// The OpenAI API key.
  final pulumi.Input<String>? apiKey;
  /// When the API key was created.
  final pulumi.Input<String>? createdAt;
  /// Who created the API key.
  final pulumi.Input<String>? createdBy;
  /// When the API key was deleted.
  final pulumi.Input<String>? deletedAt;
  /// Models associated with the OpenAI API key
  final pulumi.Input<List<GradientaiOpenaiApiKeyModel>>? models;
  /// A name for the API key.
  final pulumi.Input<String>? name;
  /// When the API key was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The UUID of the API key.
  final pulumi.Input<String>? uuid;

  /// Creates a new [GradientaiOpenaiApiKeyState].
  /// [apiKey] The OpenAI API key.
  /// [createdAt] When the API key was created.
  /// [createdBy] Who created the API key.
  /// [deletedAt] When the API key was deleted.
  /// [models] Models associated with the OpenAI API key
  /// [name] A name for the API key.
  /// [updatedAt] When the API key was last updated.
  /// [uuid] The UUID of the API key.
  GradientaiOpenaiApiKeyState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? deletedAt,
    pulumi.Output<List<GradientaiOpenaiApiKeyModel>>? models,
    pulumi.Output<String>? name,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? uuid,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      deletedAt = pulumi.Input.asOptionalInput<String>(deletedAt),
      models = pulumi.Input.asOptionalInput<List<GradientaiOpenaiApiKeyModel>>(models),
      name = pulumi.Input.asOptionalInput<String>(name),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'deletedAt': ?deletedAt,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GradientaiOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GradientaiOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GradientaiOpenaiApiKeyState.fromMap(Map<String, dynamic> map) {
    return GradientaiOpenaiApiKeyState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      deletedAt: map['deletedAt'] == null ? null : pulumi.Output.create<String>(map['deletedAt'] as String),
      models: map['models'] == null ? null : pulumi.Output.create<List<GradientaiOpenaiApiKeyModel>>(pulumi.Input.decodeList<GradientaiOpenaiApiKeyModel>(map['models'], (value) => GradientaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

