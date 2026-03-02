// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerSecretRef {
  /// The Container name.
  final pulumi.Input<String>? name;
  /// The secret reference / where to find the secret, URL.
  final pulumi.Input<String>? secretRef;

  /// Creates a new [GetContainerSecretRef].
  /// [name] The Container name.
  /// [secretRef] The secret reference / where to find the secret, URL.
  GetContainerSecretRef({
    this.name,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': ?secretRef,
    };
  }

  factory GetContainerSecretRef.fromMap(Map<String, dynamic> map) {
    return GetContainerSecretRef(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      secretRef: map['secretRef'] == null ? null : (map['secretRef']! as String).input(),
    );
  }
}

