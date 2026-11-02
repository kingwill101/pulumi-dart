// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_openai_api_key_model.dart';

/// {@template pulumi_index_agent_platform_openai_api_key_agent_platform_openai_api_key_args_doc}
/// The set of arguments for AgentPlatformOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_agent_platform_openai_api_key_agent_platform_openai_api_key_args_doc}
class AgentPlatformOpenaiApiKeyArgs {
  /// The OpenAI API key.
  final pulumi.Input<String> apiKey;
  /// Models associated with the OpenAI API key
  final pulumi.Input<List<AgentPlatformOpenaiApiKeyModel>?>? models;
  /// A name for the API key.
  final pulumi.Input<String?>? name;

  /// Creates a new [AgentPlatformOpenaiApiKeyArgs].
  /// [apiKey] The OpenAI API key.
  /// [models] Models associated with the OpenAI API key
  /// [name] A name for the API key.
  const AgentPlatformOpenaiApiKeyArgs({
    required this.apiKey,
    this.models,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'models': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<AgentPlatformOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory AgentPlatformOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return AgentPlatformOpenaiApiKeyArgs(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformOpenaiApiKeyModel>(guardedValue, (value) => AgentPlatformOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
