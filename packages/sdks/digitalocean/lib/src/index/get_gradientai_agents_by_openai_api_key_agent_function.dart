// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsByOpenaiApiKeyAgentFunction {
  /// API Key value
  final pulumi.Input<String>? apiKey;
  /// Created At timestamp for the Function
  final pulumi.Input<String> createdAt;
  /// Description of the Function
  final pulumi.Input<String>? description;
  /// Name of function
  final pulumi.Input<String>? faasname;
  /// Namespace of function
  final pulumi.Input<String>? faasnamespace;
  /// Guardrail UUID for the Function
  final pulumi.Input<String>? guardrailUuid;
  /// Name of function
  final pulumi.Input<String>? name;
  /// Updated At timestamp for the Agent
  final pulumi.Input<String> updatedAt;
  /// Url of the Deployment
  final pulumi.Input<String>? url;
  /// API Key value
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentFunction].
  /// [apiKey] API Key value
  /// [createdAt] Created At timestamp for the Function
  /// [description] Description of the Function
  /// [faasname] Name of function
  /// [faasnamespace] Namespace of function
  /// [guardrailUuid] Guardrail UUID for the Function
  /// [name] Name of function
  /// [updatedAt] Updated At timestamp for the Agent
  /// [url] Url of the Deployment
  /// [uuid] API Key value
  const GetGradientaiAgentsByOpenaiApiKeyAgentFunction({
    this.apiKey,
    required this.createdAt,
    this.description,
    this.faasname,
    this.faasnamespace,
    this.guardrailUuid,
    this.name,
    required this.updatedAt,
    this.url,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'createdAt': createdAt,
      'description': ?description,
      'faasname': ?faasname,
      'faasnamespace': ?faasnamespace,
      'guardrailUuid': ?guardrailUuid,
      'name': ?name,
      'updatedAt': updatedAt,
      'url': ?url,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentFunction.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentFunction(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faasname: (() { final guardedValue = map['faasname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faasnamespace: (() { final guardedValue = map['faasnamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailUuid: (() { final guardedValue = map['guardrailUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

