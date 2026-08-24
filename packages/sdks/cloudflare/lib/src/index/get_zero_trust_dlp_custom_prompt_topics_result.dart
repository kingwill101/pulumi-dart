// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpCustomPromptTopicsResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<String> profileId;
  final pulumi.Input<String> topic;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDlpCustomPromptTopicsResult].
  /// [createdAt] Required.
  /// [description] Required.
  /// [enabled] Required.
  /// [id] Required.
  /// [name] Required.
  /// [profileId] Required.
  /// [topic] Required.
  /// [updatedAt] Required.
  const GetZeroTrustDlpCustomPromptTopicsResult({
    required this.createdAt,
    required this.description,
    required this.enabled,
    required this.id,
    required this.name,
    required this.profileId,
    required this.topic,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'enabled': enabled,
      'id': id,
      'name': name,
      'profileId': profileId,
      'topic': topic,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDlpCustomPromptTopicsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomPromptTopicsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
