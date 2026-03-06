// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_managed_identity_attestation_rule.dart';

/// {@template pulumi_iam_workload_identity_pool_managed_identity_workload_identity_pool_managed_identity_args_doc}
/// The set of arguments for WorkloadIdentityPoolManagedIdentity.
/// {@endtemplate}
/// {@macro pulumi_iam_workload_identity_pool_managed_identity_workload_identity_pool_managed_identity_args_doc}
class WorkloadIdentityPoolManagedIdentityArgs {
  /// Defines which workloads can receive an identity within a pool. When an AttestationRule is
  /// defined under a managed identity, matching workloads may receive that identity. A maximum of
  /// 50 AttestationRules can be set.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadIdentityPoolManagedIdentityAttestationRule>>? attestationRules;
  /// A description of the managed identity. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
  /// the identity, however existing credentials will still be accepted until they expire.
  final pulumi.Input<bool>? disabled;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;
  /// The ID to use for the managed identity. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String> workloadIdentityPoolManagedIdentityId;
  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String> workloadIdentityPoolNamespaceId;

  /// Creates a new [WorkloadIdentityPoolManagedIdentityArgs].
  /// [attestationRules] Defines which workloads can receive an identity within a pool. When an AttestationRule is
  /// [description] A description of the managed identity. Cannot exceed 256 characters.
  /// [disabled] Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadIdentityPoolId] The ID to use for the pool, which becomes the final component of the resource name. This
  /// [workloadIdentityPoolManagedIdentityId] The ID to use for the managed identity. This value must:
  /// [workloadIdentityPoolNamespaceId] The ID to use for the namespace. This value must:
  const WorkloadIdentityPoolManagedIdentityArgs({
    this.attestationRules,
    this.description,
    this.disabled,
    this.project,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolManagedIdentityId,
    required this.workloadIdentityPoolNamespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationRules': ?pulumi.Input.mapOptionalInputValue<List<WorkloadIdentityPoolManagedIdentityAttestationRule>, List<Map<String, dynamic>>>(attestationRules, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolManagedIdentityAttestationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'disabled': ?disabled,
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolManagedIdentityId': workloadIdentityPoolManagedIdentityId,
      'workloadIdentityPoolNamespaceId': workloadIdentityPoolNamespaceId,
    };
  }

  factory WorkloadIdentityPoolManagedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolManagedIdentityArgs(
      attestationRules: (() { final guardedValue = map['attestationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadIdentityPoolManagedIdentityAttestationRule>(guardedValue, (value) => WorkloadIdentityPoolManagedIdentityAttestationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityPoolId: pulumi.Input.fromValue(map['workloadIdentityPoolId'] as String),
      workloadIdentityPoolManagedIdentityId: pulumi.Input.fromValue(map['workloadIdentityPoolManagedIdentityId'] as String),
      workloadIdentityPoolNamespaceId: pulumi.Input.fromValue(map['workloadIdentityPoolNamespaceId'] as String),
    );
  }
}

