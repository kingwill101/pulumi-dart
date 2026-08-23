// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentChildAgentAnthropicApiKey {
  /// Timestamp when the API Key was created
  final pulumi.Input<String> createdAt;
  /// Created By user ID for the API Key
  final pulumi.Input<String>? createdBy;
  /// Deleted At timestamp for the API Key
  final pulumi.Input<String> deletedAt;
  /// Name of the API Key
  final pulumi.Input<String>? name;
  /// Updated At timestamp for the API Key
  final pulumi.Input<String> updatedAt;
  /// API Key value
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGenaiAgentsAgentChildAgentAnthropicApiKey].
  /// [createdAt] Timestamp when the API Key was created
  /// [createdBy] Created By user ID for the API Key
  /// [deletedAt] Deleted At timestamp for the API Key
  /// [name] Name of the API Key
  /// [updatedAt] Updated At timestamp for the API Key
  /// [uuid] API Key value
  const GetGenaiAgentsAgentChildAgentAnthropicApiKey({
    required this.createdAt,
    this.createdBy,
    required this.deletedAt,
    this.name,
    required this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'createdBy': ?createdBy,
      'deletedAt': deletedAt,
      'name': ?name,
      'updatedAt': updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiAgentsAgentChildAgentAnthropicApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentChildAgentAnthropicApiKey(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
