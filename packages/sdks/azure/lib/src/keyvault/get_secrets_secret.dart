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
      enabled: (map['enabled'] as bool).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

