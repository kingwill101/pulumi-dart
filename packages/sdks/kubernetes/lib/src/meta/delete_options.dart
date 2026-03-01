// ignore_for_file: unused_element, unnecessary_cast

import 'preconditions.dart';

/// DeleteOptions may be provided when deleting an API object.
class DeleteOptions {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  final List<String>? dryRun;
  /// The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  final int? gracePeriodSeconds;
  /// if set to true, it will trigger an unsafe deletion of the resource in case the normal deletion flow fails with a corrupt object error. A resource is considered corrupt if it can not be retrieved from the underlying storage successfully because of a) its data can not be transformed e.g. decryption failure, or b) it fails to decode into an object. NOTE: unsafe deletion ignores finalizer constraints, skips precondition checks, and removes the object from the storage. WARNING: This may potentially break the cluster if the workload associated with the resource being unsafe-deleted relies on normal deletion flow. Use only if you REALLY know what you are doing. The default value is false, and the user must opt in to enable it
  final bool? ignoreStoreReadErrorWithClusterBreakingPotential;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  final bool? orphanDependents;
  /// Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  final Preconditions? preconditions;
  /// Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  final String? propagationPolicy;

  /// Creates a new [DeleteOptions].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [dryRun] When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// [gracePeriodSeconds] The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// [ignoreStoreReadErrorWithClusterBreakingPotential] if set to true, it will trigger an unsafe deletion of the resource in case the normal deletion flow fails with a corrupt object error. A resource is considered corrupt if it can not be retrieved from the underlying storage successfully because of a) its data can not be transformed e.g. decryption failure, or b) it fails to decode into an object. NOTE: unsafe deletion ignores finalizer constraints, skips precondition checks, and removes the object from the storage. WARNING: This may potentially break the cluster if the workload associated with the resource being unsafe-deleted relies on normal deletion flow. Use only if you REALLY know what you are doing. The default value is false, and the user must opt in to enable it
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [orphanDependents] Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// [preconditions] Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  /// [propagationPolicy] Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  DeleteOptions({
    this.apiVersion,
    this.dryRun,
    this.gracePeriodSeconds,
    this.ignoreStoreReadErrorWithClusterBreakingPotential,
    this.kind,
    this.orphanDependents,
    this.preconditions,
    this.propagationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'dryRun': ?dryRun,
      'gracePeriodSeconds': ?gracePeriodSeconds,
      'ignoreStoreReadErrorWithClusterBreakingPotential': ?ignoreStoreReadErrorWithClusterBreakingPotential,
      'kind': ?kind,
      'orphanDependents': ?orphanDependents,
      'preconditions': ?preconditions == null ? null : preconditions!.toMap(),
      'propagationPolicy': ?propagationPolicy,
    };
  }

  factory DeleteOptions.fromMap(Map<String, dynamic> map) {
    return DeleteOptions(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as List).cast<String>(),
      gracePeriodSeconds: map['gracePeriodSeconds'] == null ? null : map['gracePeriodSeconds'] as int,
      ignoreStoreReadErrorWithClusterBreakingPotential: map['ignoreStoreReadErrorWithClusterBreakingPotential'] == null ? null : map['ignoreStoreReadErrorWithClusterBreakingPotential'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      orphanDependents: map['orphanDependents'] == null ? null : map['orphanDependents'] as bool,
      preconditions: map['preconditions'] == null ? null : Preconditions.fromMap((map['preconditions'] as Map).cast<String, dynamic>()),
      propagationPolicy: map['propagationPolicy'] == null ? null : map['propagationPolicy'] as String,
    );
  }
}

