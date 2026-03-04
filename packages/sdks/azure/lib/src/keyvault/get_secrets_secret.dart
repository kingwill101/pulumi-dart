// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsSecret {
  /// Whether this secret is enabled.
  final pulumi.Input<bool> enabled;

  /// The ID of this secret.
  final pulumi.Input<String> id;

  /// The name of secret.
  final pulumi.Input<String> name;

  /// The tags of this secret.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetSecretsSecret].
  /// [enabled] Whether this secret is enabled.
  /// [id] The ID of this secret.
  /// [name] The name of secret.
  /// [tags] The tags of this secret.
  GetSecretsSecret({
    required this.enabled,
    required this.id,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'name': name,
      'tags': tags,
    };
  }

  factory GetSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecret(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
