// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_workload_identity_pool_namespace_workload_identity_pool_namespace_args_doc}
/// The set of arguments for WorkloadIdentityPoolNamespace.
/// {@endtemplate}
/// {@macro pulumi_iam_workload_identity_pool_namespace_workload_identity_pool_namespace_args_doc}
class WorkloadIdentityPoolNamespaceArgs {
  /// A description of the namespace. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// identities within this namespace, however existing credentials will still be accepted until
  /// they expire.
  final pulumi.Input<bool>? disabled;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;
  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String> workloadIdentityPoolNamespaceId;

  /// Creates a new [WorkloadIdentityPoolNamespaceArgs].
  /// [description] A description of the namespace. Cannot exceed 256 characters.
  /// [disabled] Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadIdentityPoolId] The ID to use for the pool, which becomes the final component of the resource name. This
  /// [workloadIdentityPoolNamespaceId] The ID to use for the namespace. This value must:
  WorkloadIdentityPoolNamespaceArgs({
    this.description,
    this.disabled,
    this.project,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolNamespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolNamespaceId': workloadIdentityPoolNamespaceId,
    };
  }

  factory WorkloadIdentityPoolNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolNamespaceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityPoolId: pulumi.Input.fromValue(map['workloadIdentityPoolId'] as String),
      workloadIdentityPoolNamespaceId: pulumi.Input.fromValue(map['workloadIdentityPoolNamespaceId'] as String),
    );
  }
}

