// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_scope_args_doc}
/// The set of arguments for Scope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_scope_args_doc}
class ScopeArgs {
  /// Optional. Labels for this Scope.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  final pulumi.Input<String>? name;
  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  final pulumi.Input<String>? project;
  /// Required. Client chosen ID for the Scope. `scope_id` must be a ????
  final pulumi.Input<String> scopeId;

  /// Creates a new [ScopeArgs].
  /// [labels] Optional. Labels for this Scope.
  /// [location] Optional.
  /// [name] The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  /// [namespaceLabels] Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  /// [project] Optional.
  /// [scopeId] Required. Client chosen ID for the Scope. `scope_id` must be a ????
  const ScopeArgs({
    this.labels,
    this.location,
    this.name,
    this.namespaceLabels,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'namespaceLabels': ?namespaceLabels,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory ScopeArgs.fromMap(Map<String, dynamic> map) {
    return ScopeArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceLabels: (() { final guardedValue = map['namespaceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
