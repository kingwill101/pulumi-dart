// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_namespace_gkehub_v1alpha_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_namespace_gkehub_v1alpha_args_doc}
class NamespaceGkehubV1alphaArgs {
  /// Optional. Labels for this Namespace.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  final pulumi.Input<String>? name;
  /// Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  final pulumi.Input<String>? project;
  /// Scope associated with the namespace
  final pulumi.Input<String> scope;
  final pulumi.Input<String> scopeId;
  /// Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> scopeNamespaceId;

  /// Creates a new [NamespaceGkehubV1alphaArgs].
  /// [labels] Optional. Labels for this Namespace.
  /// [location] Optional.
  /// [name] The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  /// [namespaceLabels] Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  /// [project] Optional.
  /// [scope] Scope associated with the namespace
  /// [scopeId] Required.
  /// [scopeNamespaceId] Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  NamespaceGkehubV1alphaArgs({
    this.labels,
    this.location,
    this.name,
    this.namespaceLabels,
    this.project,
    required this.scope,
    required this.scopeId,
    required this.scopeNamespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'namespaceLabels': ?namespaceLabels,
      'project': ?project,
      'scope': scope,
      'scopeId': scopeId,
      'scopeNamespaceId': scopeNamespaceId,
    };
  }

  factory NamespaceGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceGkehubV1alphaArgs(
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceLabels: map['namespaceLabels'] == null ? null : ((map['namespaceLabels'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scope: (map['scope'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
      scopeNamespaceId: (map['scopeNamespaceId'] as String).input(),
    );
  }
}

