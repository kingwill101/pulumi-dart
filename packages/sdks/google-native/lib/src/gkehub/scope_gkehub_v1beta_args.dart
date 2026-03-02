// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_scope_gkehub_v1beta_args_doc}
/// The set of arguments for Scope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_scope_gkehub_v1beta_args_doc}
class ScopeGkehubV1betaArgs {
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

  /// Creates a new [ScopeGkehubV1betaArgs].
  /// [labels] Optional. Labels for this Scope.
  /// [location] Optional.
  /// [name] The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  /// [namespaceLabels] Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  /// [project] Optional.
  /// [scopeId] Required. Client chosen ID for the Scope. `scope_id` must be a ????
  ScopeGkehubV1betaArgs({
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

  factory ScopeGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ScopeGkehubV1betaArgs(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceLabels: map['namespaceLabels'] == null ? null : ((map['namespaceLabels']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      scopeId: (map['scopeId'] as String).input(),
    );
  }
}

