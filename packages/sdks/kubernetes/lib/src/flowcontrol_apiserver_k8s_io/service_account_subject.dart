// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubject {
  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  final pulumi.Input<String> name;

  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  final pulumi.Input<String> namespace;

  /// Creates a new [ServiceAccountSubject].
  /// [name] `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  /// [namespace] `namespace` is the namespace of matching ServiceAccount objects. Required.
  ServiceAccountSubject({required this.name, required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'namespace': namespace};
  }

  factory ServiceAccountSubject.fromMap(Map<String, dynamic> map) {
    return ServiceAccountSubject(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
