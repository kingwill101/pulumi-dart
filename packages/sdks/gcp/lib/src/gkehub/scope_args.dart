// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_scope_scope_args_doc}
/// The set of arguments for Scope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_scope_scope_args_doc}
class ScopeArgs {
  /// Labels for this Scope.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Scope-level cluster namespace labels. For the member clusters bound
  /// to the Scope, these labels are applied to each namespace under the
  /// Scope. Scope-level labels take precedence over Namespace-level
  /// labels (`namespace_labels` in the Fleet Namespace resource) if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The client-provided identifier of the scope.
  final pulumi.Input<String> scopeId;

  /// Creates a new [ScopeArgs].
  /// [labels] Labels for this Scope.
  /// [namespaceLabels] Scope-level cluster namespace labels. For the member clusters bound
  /// [project] The ID of the project in which the resource belongs.
  /// [scopeId] The client-provided identifier of the scope.
  ScopeArgs({
    this.labels,
    this.namespaceLabels,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'namespaceLabels': ?namespaceLabels,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory ScopeArgs.fromMap(Map<String, dynamic> map) {
    return ScopeArgs(
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      namespaceLabels: (() {
        final guardedValue = map['namespaceLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
