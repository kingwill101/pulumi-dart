// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
class SecretReferencePatch {
  /// name is unique within a namespace to reference a secret resource.
  final pulumi.Input<String>? name;
  /// namespace defines the space within which the secret name must be unique.
  final pulumi.Input<String>? namespace;

  /// Creates a new [SecretReferencePatch].
  /// [name] name is unique within a namespace to reference a secret resource.
  /// [namespace] namespace defines the space within which the secret name must be unique.
  SecretReferencePatch({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory SecretReferencePatch.fromMap(Map<String, dynamic> map) {
    return SecretReferencePatch(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
    );
  }
}

