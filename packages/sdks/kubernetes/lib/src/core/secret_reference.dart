// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
class SecretReference {
  /// name is unique within a namespace to reference a secret resource.
  final pulumi.Input<String>? name;
  /// namespace defines the space within which the secret name must be unique.
  final pulumi.Input<String>? namespace;

  /// Creates a new [SecretReference].
  /// [name] name is unique within a namespace to reference a secret resource.
  /// [namespace] namespace defines the space within which the secret name must be unique.
  const SecretReference({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory SecretReference.fromMap(Map<String, dynamic> map) {
    return SecretReference(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
