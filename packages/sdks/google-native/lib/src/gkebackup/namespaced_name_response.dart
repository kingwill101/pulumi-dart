// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a namespaced resource in Kubernetes.
class NamespacedNameResponse {
  /// Optional. The name of the Kubernetes resource.
  final pulumi.Input<String> name;
  /// Optional. The Namespace of the Kubernetes resource.
  final pulumi.Input<String> namespace;

  /// Creates a new [NamespacedNameResponse].
  /// [name] Optional. The name of the Kubernetes resource.
  /// [namespace] Optional. The Namespace of the Kubernetes resource.
  NamespacedNameResponse({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
    };
  }

  factory NamespacedNameResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedNameResponse(
      name: (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

