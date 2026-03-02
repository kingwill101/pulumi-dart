// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_namespace_gkehub_v1beta_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_namespace_gkehub_v1beta_args_doc}
class GetNamespaceGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetNamespaceGkehubV1betaArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetNamespaceGkehubV1betaArgs({
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

  factory GetNamespaceGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceGkehubV1betaArgs(
      location: (map['location'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
    );
  }
}

