// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentFunction {
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

  /// Creates a new [GetGenaiAgentFunction].
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
  GetGenaiAgentFunction({
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

  factory GetGenaiAgentFunction.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentFunction(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
      createdAt: (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      faasname: map['faasname'] == null ? null : (map['faasname']! as String).input(),
      faasnamespace: map['faasnamespace'] == null ? null : (map['faasnamespace']! as String).input(),
      guardrailUuid: map['guardrailUuid'] == null ? null : (map['guardrailUuid']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

