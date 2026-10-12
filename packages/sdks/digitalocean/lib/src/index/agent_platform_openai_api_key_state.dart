// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_openai_api_key_model.dart';

/// Input properties used for looking up and filtering AgentPlatformOpenaiApiKey resources.
class AgentPlatformOpenaiApiKeyState {
  /// The OpenAI API key.
  final pulumi.Input<String?>? apiKey;
  /// When the API key was created.
  final pulumi.Input<String?>? createdAt;
  /// Who created the API key.
  final pulumi.Input<String?>? createdBy;
  /// When the API key was deleted.
  final pulumi.Input<String?>? deletedAt;
  /// Models associated with the OpenAI API key
  final pulumi.Input<List<AgentPlatformOpenaiApiKeyModel>?>? models;
  /// A name for the API key.
  final pulumi.Input<String?>? name;
  /// When the API key was last updated.
  final pulumi.Input<String?>? updatedAt;
  /// The UUID of the API key.
  final pulumi.Input<String?>? uuid;

  /// Creates a new [AgentPlatformOpenaiApiKeyState].
  /// [apiKey] The OpenAI API key.
  /// [createdAt] When the API key was created.
  /// [createdBy] Who created the API key.
  /// [deletedAt] When the API key was deleted.
  /// [models] Models associated with the OpenAI API key
  /// [name] A name for the API key.
  /// [updatedAt] When the API key was last updated.
  /// [uuid] The UUID of the API key.
  const AgentPlatformOpenaiApiKeyState({
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
      'models': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<AgentPlatformOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory AgentPlatformOpenaiApiKeyState.fromMap(Map<String, dynamic> map) {
    return AgentPlatformOpenaiApiKeyState(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformOpenaiApiKeyModel>(guardedValue, (value) => AgentPlatformOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
