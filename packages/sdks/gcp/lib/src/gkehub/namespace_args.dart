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
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<Map<String, String>>? namespaceLabels,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scope,
    required pulumi.Output<String> scopeId,
    required pulumi.Output<String> scopeNamespaceId,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      namespaceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(namespaceLabels),
      project = pulumi.Input.asOptionalInput<String>(project),
      scope = pulumi.Input.asInput<String>(scope),
      scopeId = pulumi.Input.asInput<String>(scopeId),
      scopeNamespaceId = pulumi.Input.asInput<String>(scopeNamespaceId);

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
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      namespaceLabels: map['namespaceLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['namespaceLabels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
      scopeNamespaceId: pulumi.Output.create<String>(map['scopeNamespaceId'] as String),
    );
  }
}

