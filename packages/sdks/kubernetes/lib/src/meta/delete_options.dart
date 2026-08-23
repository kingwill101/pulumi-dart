// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preconditions.dart';

/// DeleteOptions may be provided when deleting an API object.
class DeleteOptions {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  final pulumi.Input<List<String>>? dryRun;
  /// The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  final pulumi.Input<int>? gracePeriodSeconds;
  /// if set to true, it will trigger an unsafe deletion of the resource in case the normal deletion flow fails with a corrupt object error. A resource is considered corrupt if it can not be retrieved from the underlying storage successfully because of a) its data can not be transformed e.g. decryption failure, or b) it fails to decode into an object. NOTE: unsafe deletion ignores finalizer constraints, skips precondition checks, and removes the object from the storage. WARNING: This may potentially break the cluster if the workload associated with the resource being unsafe-deleted relies on normal deletion flow. Use only if you REALLY know what you are doing. The default value is false, and the user must opt in to enable it
  final pulumi.Input<bool>? ignoreStoreReadErrorWithClusterBreakingPotential;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  final pulumi.Input<bool>? orphanDependents;
  /// Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  final pulumi.Input<Preconditions>? preconditions;
  /// Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  final pulumi.Input<String>? propagationPolicy;

  /// Creates a new [DeleteOptions].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [dryRun] When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// [gracePeriodSeconds] The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// [ignoreStoreReadErrorWithClusterBreakingPotential] if set to true, it will trigger an unsafe deletion of the resource in case the normal deletion flow fails with a corrupt object error. A resource is considered corrupt if it can not be retrieved from the underlying storage successfully because of a) its data can not be transformed e.g. decryption failure, or b) it fails to decode into an object. NOTE: unsafe deletion ignores finalizer constraints, skips precondition checks, and removes the object from the storage. WARNING: This may potentially break the cluster if the workload associated with the resource being unsafe-deleted relies on normal deletion flow. Use only if you REALLY know what you are doing. The default value is false, and the user must opt in to enable it
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [orphanDependents] Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// [preconditions] Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  /// [propagationPolicy] Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  const DeleteOptions({
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
      'preconditions': ?pulumi.Input.mapOptionalInputValue<Preconditions, Map<String, dynamic>>(preconditions, (value) => value.toMap()),
      'propagationPolicy': ?propagationPolicy,
    };
  }

  factory DeleteOptions.fromMap(Map<String, dynamic> map) {
    return DeleteOptions(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gracePeriodSeconds: (() { final guardedValue = map['gracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ignoreStoreReadErrorWithClusterBreakingPotential: (() { final guardedValue = map['ignoreStoreReadErrorWithClusterBreakingPotential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orphanDependents: (() { final guardedValue = map['orphanDependents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preconditions: (() { final guardedValue = map['preconditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Preconditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      propagationPolicy: (() { final guardedValue = map['propagationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
