// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (`namespace_labels` in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the Scope instance.
  final pulumi.Input<String> scope;
  /// Id of the scope
  final pulumi.Input<String> scopeId;
  /// The client-provided identifier of the namespace.
  final pulumi.Input<String> scopeNamespaceId;

  /// Creates a new [NamespaceArgs].
  /// [labels] Labels for this Namespace.
  /// [namespaceLabels] Namespace-level cluster namespace labels. These labels are applied
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] The name of the Scope instance.
  /// [scopeId] Id of the scope
  /// [scopeNamespaceId] The client-provided identifier of the namespace.
  NamespaceArgs({
    this.labels,
    this.namespaceLabels,
    this.project,
    required this.scope,
    required this.scopeId,
    required this.scopeNamespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'namespaceLabels': ?namespaceLabels,
      'project': ?project,
      'scope': scope,
      'scopeId': scopeId,
      'scopeNamespaceId': scopeNamespaceId,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      namespaceLabels: map['namespaceLabels'] == null ? null : ((map['namespaceLabels'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scope: (map['scope'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
      scopeNamespaceId: (map['scopeNamespaceId'] as String).input(),
    );
  }
}

