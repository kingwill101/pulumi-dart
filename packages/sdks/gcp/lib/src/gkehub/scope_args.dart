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
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<Map<String, String>>? namespaceLabels,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scopeId,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      namespaceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(namespaceLabels),
      project = pulumi.Input.asOptionalInput<String>(project),
      scopeId = pulumi.Input.asInput<String>(scopeId);

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
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      namespaceLabels: map['namespaceLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['namespaceLabels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

