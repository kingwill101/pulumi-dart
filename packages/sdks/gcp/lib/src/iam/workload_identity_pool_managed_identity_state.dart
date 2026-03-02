// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_managed_identity_attestation_rule.dart';

/// Input properties used for looking up and filtering WorkloadIdentityPoolManagedIdentity resources.
class WorkloadIdentityPoolManagedIdentityState {
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
  /// The resource name of the managed identity as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}/managedIdentities/{workload_identity_pool_managed_identity_id}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The current state of the managed identity.
  /// * `ACTIVE`: The managed identity is active.
  /// * `DELETED`: The managed identity is soft-deleted. Soft-deleted managed identities are
  /// permanently deleted after approximately 30 days. You can restore a soft-deleted managed
  /// identity using UndeleteWorkloadIdentityPoolManagedIdentity. You cannot reuse the ID of a
  /// soft-deleted managed identity until it is permanently deleted.
  final pulumi.Input<String>? state;
  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? workloadIdentityPoolId;
  /// The ID to use for the managed identity. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String>? workloadIdentityPoolManagedIdentityId;
  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String>? workloadIdentityPoolNamespaceId;

  /// Creates a new [WorkloadIdentityPoolManagedIdentityState].
  /// [attestationRules] Defines which workloads can receive an identity within a pool. When an AttestationRule is
  /// [description] A description of the managed identity. Cannot exceed 256 characters.
  /// [disabled] Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
  /// [name] The resource name of the managed identity as
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current state of the managed identity.
  /// [workloadIdentityPoolId] The ID to use for the pool, which becomes the final component of the resource name. This
  /// [workloadIdentityPoolManagedIdentityId] The ID to use for the managed identity. This value must:
  /// [workloadIdentityPoolNamespaceId] The ID to use for the namespace. This value must:
  WorkloadIdentityPoolManagedIdentityState({
    this.attestationRules,
    this.description,
    this.disabled,
    this.name,
    this.project,
    this.state,
    this.workloadIdentityPoolId,
    this.workloadIdentityPoolManagedIdentityId,
    this.workloadIdentityPoolNamespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationRules': ?pulumi.Input.mapOptionalInputValue<List<WorkloadIdentityPoolManagedIdentityAttestationRule>, List<Map<String, dynamic>>>(attestationRules, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolManagedIdentityAttestationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'disabled': ?disabled,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'workloadIdentityPoolId': ?workloadIdentityPoolId,
      'workloadIdentityPoolManagedIdentityId': ?workloadIdentityPoolManagedIdentityId,
      'workloadIdentityPoolNamespaceId': ?workloadIdentityPoolNamespaceId,
    };
  }

  factory WorkloadIdentityPoolManagedIdentityState.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolManagedIdentityState(
      attestationRules: map['attestationRules'] == null ? null : (pulumi.Input.decodeList<WorkloadIdentityPoolManagedIdentityAttestationRule>(map['attestationRules']!, (value) => WorkloadIdentityPoolManagedIdentityAttestationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      workloadIdentityPoolId: map['workloadIdentityPoolId'] == null ? null : (map['workloadIdentityPoolId']! as String).input(),
      workloadIdentityPoolManagedIdentityId: map['workloadIdentityPoolManagedIdentityId'] == null ? null : (map['workloadIdentityPoolManagedIdentityId']! as String).input(),
      workloadIdentityPoolNamespaceId: map['workloadIdentityPoolNamespaceId'] == null ? null : (map['workloadIdentityPoolNamespaceId']! as String).input(),
    );
  }
}

