// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a namespaced resource in Kubernetes.
class NamespacedName {
  /// Optional. The name of the Kubernetes resource.
  final pulumi.Input<String>? name;
  /// Optional. The Namespace of the Kubernetes resource.
  final pulumi.Input<String>? namespace;

  /// Creates a new [NamespacedName].
  /// [name] Optional. The name of the Kubernetes resource.
  /// [namespace] Optional. The Namespace of the Kubernetes resource.
  NamespacedName({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory NamespacedName.fromMap(Map<String, dynamic> map) {
    return NamespacedName(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
    );
  }
}

