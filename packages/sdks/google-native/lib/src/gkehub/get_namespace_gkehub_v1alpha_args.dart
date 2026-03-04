// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_namespace_gkehub_v1alpha_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_namespace_gkehub_v1alpha_args_doc}
class GetNamespaceGkehubV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetNamespaceGkehubV1alphaArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetNamespaceGkehubV1alphaArgs({
    required this.location,
    required this.namespaceId,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetNamespaceGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceGkehubV1alphaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
