// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_namespace_owner_service.dart';

/// Input properties used for looking up and filtering WorkloadIdentityPoolNamespace resources.
class WorkloadIdentityPoolNamespaceState {
  /// A description of the namespace. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// identities within this namespace, however existing credentials will still be accepted until
  /// they expire.
  final pulumi.Input<bool>? disabled;
  /// The resource name of the namespace as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}`.
  final pulumi.Input<String>? name;
  /// Defines the owner that is allowed to mutate this resource. If present, this resource can only
  /// be mutated by the owner.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadIdentityPoolNamespaceOwnerService>>? ownerServices;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The current state of the namespace.
  /// * `ACTIVE`: The namespace is active.
  /// * `DELETED`: The namespace is soft-deleted. Soft-deleted namespaces are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted namespace using
  /// UndeleteWorkloadIdentityPoolNamespace. You cannot reuse the ID of a soft-deleted namespace
  /// until it is permanently deleted.
  final pulumi.Input<String>? state;
  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? workloadIdentityPoolId;
  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String>? workloadIdentityPoolNamespaceId;

  /// Creates a new [WorkloadIdentityPoolNamespaceState].
  /// [description] A description of the namespace. Cannot exceed 256 characters.
  /// [disabled] Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// [name] The resource name of the namespace as
  /// [ownerServices] Defines the owner that is allowed to mutate this resource. If present, this resource can only
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current state of the namespace.
  /// [workloadIdentityPoolId] The ID to use for the pool, which becomes the final component of the resource name. This
  /// [workloadIdentityPoolNamespaceId] The ID to use for the namespace. This value must:
  WorkloadIdentityPoolNamespaceState({
    this.description,
    this.disabled,
    this.name,
    this.ownerServices,
    this.project,
    this.state,
    this.workloadIdentityPoolId,
    this.workloadIdentityPoolNamespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'name': ?name,
      'ownerServices': ?pulumi.Input.mapOptionalInputValue<List<WorkloadIdentityPoolNamespaceOwnerService>, List<Map<String, dynamic>>>(ownerServices, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolNamespaceOwnerService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'state': ?state,
      'workloadIdentityPoolId': ?workloadIdentityPoolId,
      'workloadIdentityPoolNamespaceId': ?workloadIdentityPoolNamespaceId,
    };
  }

  factory WorkloadIdentityPoolNamespaceState.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolNamespaceState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerServices: (() { final guardedValue = map['ownerServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadIdentityPoolNamespaceOwnerService>(guardedValue, (value) => WorkloadIdentityPoolNamespaceOwnerService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityPoolId: (() { final guardedValue = map['workloadIdentityPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityPoolNamespaceId: (() { final guardedValue = map['workloadIdentityPoolNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

