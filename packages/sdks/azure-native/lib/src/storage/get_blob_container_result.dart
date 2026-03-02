// ignore_for_file: unused_element, unnecessary_cast

import 'immutability_policy_properties_response.dart';
import 'immutable_storage_with_versioning_response.dart';
import 'legal_hold_properties_response.dart';

/// Result data returned by getBlobContainer.
class GetBlobContainerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Default the container to use specified encryption scope for all writes.
  final String? defaultEncryptionScope;
  /// Indicates whether the blob container was deleted.
  final bool deleted;
  /// Blob container deletion time.
  final String deletedTime;
  /// Block override of encryption scope from the container default.
  final bool? denyEncryptionScopeOverride;
  /// Enable NFSv3 all squash on blob container.
  final bool? enableNfsV3AllSquash;
  /// Enable NFSv3 root squash on blob container.
  final bool? enableNfsV3RootSquash;
  /// Resource Etag.
  final String etag;
  /// The hasImmutabilityPolicy public property is set to true by SRP if ImmutabilityPolicy has been created for this container. The hasImmutabilityPolicy public property is set to false by SRP if ImmutabilityPolicy has not been created for this container.
  final bool hasImmutabilityPolicy;
  /// The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  final bool hasLegalHold;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The ImmutabilityPolicy property of the container.
  final ImmutabilityPolicyPropertiesResponse immutabilityPolicy;
  /// The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  final ImmutableStorageWithVersioningResponse? immutableStorageWithVersioning;
  /// Returns the date and time the container was last modified.
  final String lastModifiedTime;
  /// Specifies whether the lease on a container is of infinite or fixed duration, only when the container is leased.
  final String leaseDuration;
  /// Lease state of the container.
  final String leaseState;
  /// The lease status of the container.
  final String leaseStatus;
  /// The LegalHold property of the container.
  final LegalHoldPropertiesResponse legalHold;
  /// A name-value pair to associate with the container as metadata.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String name;
  /// Specifies whether data in the container may be accessed publicly and the level of access.
  final String? publicAccess;
  /// Remaining retention days for soft deleted blob container.
  final int remainingRetentionDays;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The version of the deleted blob container.
  final String version;

  /// Creates a new [GetBlobContainerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultEncryptionScope] Default the container to use specified encryption scope for all writes.
  /// [deleted] Indicates whether the blob container was deleted.
  /// [deletedTime] Blob container deletion time.
  /// [denyEncryptionScopeOverride] Block override of encryption scope from the container default.
  /// [enableNfsV3AllSquash] Enable NFSv3 all squash on blob container.
  /// [enableNfsV3RootSquash] Enable NFSv3 root squash on blob container.
  /// [etag] Resource Etag.
  /// [hasImmutabilityPolicy] The hasImmutabilityPolicy public property is set to true by SRP if ImmutabilityPolicy has been created for this container. The hasImmutabilityPolicy public property is set to false by SRP if ImmutabilityPolicy has not been created for this container.
  /// [hasLegalHold] The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [immutabilityPolicy] The ImmutabilityPolicy property of the container.
  /// [immutableStorageWithVersioning] The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  /// [lastModifiedTime] Returns the date and time the container was last modified.
  /// [leaseDuration] Specifies whether the lease on a container is of infinite or fixed duration, only when the container is leased.
  /// [leaseState] Lease state of the container.
  /// [leaseStatus] The lease status of the container.
  /// [legalHold] The LegalHold property of the container.
  /// [metadata] A name-value pair to associate with the container as metadata.
  /// [name] The name of the resource
  /// [publicAccess] Specifies whether data in the container may be accessed publicly and the level of access.
  /// [remainingRetentionDays] Remaining retention days for soft deleted blob container.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version of the deleted blob container.
  GetBlobContainerResult({
    required this.azureApiVersion,
    this.defaultEncryptionScope,
    required this.deleted,
    required this.deletedTime,
    this.denyEncryptionScopeOverride,
    this.enableNfsV3AllSquash,
    this.enableNfsV3RootSquash,
    required this.etag,
    required this.hasImmutabilityPolicy,
    required this.hasLegalHold,
    required this.id,
    required this.immutabilityPolicy,
    this.immutableStorageWithVersioning,
    required this.lastModifiedTime,
    required this.leaseDuration,
    required this.leaseState,
    required this.leaseStatus,
    required this.legalHold,
    this.metadata,
    required this.name,
    this.publicAccess,
    required this.remainingRetentionDays,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'deleted': deleted,
      'deletedTime': deletedTime,
      'denyEncryptionScopeOverride': ?denyEncryptionScopeOverride,
      'enableNfsV3AllSquash': ?enableNfsV3AllSquash,
      'enableNfsV3RootSquash': ?enableNfsV3RootSquash,
      'etag': etag,
      'hasImmutabilityPolicy': hasImmutabilityPolicy,
      'hasLegalHold': hasLegalHold,
      'id': id,
      'immutabilityPolicy': immutabilityPolicy.toMap(),
      'immutableStorageWithVersioning': ?immutableStorageWithVersioning == null ? null : immutableStorageWithVersioning!.toMap(),
      'lastModifiedTime': lastModifiedTime,
      'leaseDuration': leaseDuration,
      'leaseState': leaseState,
      'leaseStatus': leaseStatus,
      'legalHold': legalHold.toMap(),
      'metadata': ?metadata,
      'name': name,
      'publicAccess': ?publicAccess,
      'remainingRetentionDays': remainingRetentionDays,
      'type': type,
      'version': version,
    };
  }

  factory GetBlobContainerResult.fromMap(Map<String, dynamic> map) {
    return GetBlobContainerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultEncryptionScope: map['defaultEncryptionScope'] == null ? null : map['defaultEncryptionScope']! as String,
      deleted: map['deleted'] as bool,
      deletedTime: map['deletedTime'] as String,
      denyEncryptionScopeOverride: map['denyEncryptionScopeOverride'] == null ? null : map['denyEncryptionScopeOverride']! as bool,
      enableNfsV3AllSquash: map['enableNfsV3AllSquash'] == null ? null : map['enableNfsV3AllSquash']! as bool,
      enableNfsV3RootSquash: map['enableNfsV3RootSquash'] == null ? null : map['enableNfsV3RootSquash']! as bool,
      etag: map['etag'] as String,
      hasImmutabilityPolicy: map['hasImmutabilityPolicy'] as bool,
      hasLegalHold: map['hasLegalHold'] as bool,
      id: map['id'] as String,
      immutabilityPolicy: ImmutabilityPolicyPropertiesResponse.fromMap((map['immutabilityPolicy'] as Map).cast<String, dynamic>()),
      immutableStorageWithVersioning: map['immutableStorageWithVersioning'] == null ? null : ImmutableStorageWithVersioningResponse.fromMap((map['immutableStorageWithVersioning']! as Map).cast<String, dynamic>()),
      lastModifiedTime: map['lastModifiedTime'] as String,
      leaseDuration: map['leaseDuration'] as String,
      leaseState: map['leaseState'] as String,
      leaseStatus: map['leaseStatus'] as String,
      legalHold: LegalHoldPropertiesResponse.fromMap((map['legalHold'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null ? null : (map['metadata']! as Map).cast<String, String>(),
      name: map['name'] as String,
      publicAccess: map['publicAccess'] == null ? null : map['publicAccess']! as String,
      remainingRetentionDays: map['remainingRetentionDays'] as int,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

