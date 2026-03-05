// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestorePlanRestoreConfigExcludedNamespaces {
  /// A list of Kubernetes Namespaces.
  final pulumi.Input<List<String>> namespaces;

  /// Creates a new [RestorePlanRestoreConfigExcludedNamespaces].
  /// [namespaces] A list of Kubernetes Namespaces.
  RestorePlanRestoreConfigExcludedNamespaces({
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaces': namespaces,
    };
  }

  factory RestorePlanRestoreConfigExcludedNamespaces.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigExcludedNamespaces(
      namespaces: pulumi.Input.fromValue((map['namespaces'] as List).cast<String>()),
    );
  }
}

