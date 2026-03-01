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
  ScopeArgs({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? namespaceLabels,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scopeId,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(namespaceLabels),
      project = pulumi.Input.asOptionalInput<String>(project),
      scopeId = pulumi.Input.asInput<String>(scopeId);

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
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceLabels: map['namespaceLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['namespaceLabels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

