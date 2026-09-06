// ignore_for_file: unused_element, unnecessary_cast

import 'immutability_policy_properties_response.dart';
import 'immutable_storage_with_versioning_response.dart';
import 'legal_hold_properties_response.dart';

/// Result data returned by getBlobContainer.
class GetBlobContainerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Default the container to use specified encryption scope for all writes.
  final String? defaultEncryptionScope;
  /// Indicates whether the blob container was deleted.
  final bool? deleted;
  /// Blob container deletion time.
  final String? deletedTime;
  /// Block override of encryption scope from the container default.
  final bool? denyEncryptionScopeOverride;
  /// Enable NFSv3 all squash on blob container.
  final bool? enableNfsV3AllSquash;
  /// Enable NFSv3 root squash on blob container.
  final bool? enableNfsV3RootSquash;
  /// Resource Etag.
  final String? etag;
  /// The hasImmutabilityPolicy public property is set to true by SRP if ImmutabilityPolicy has been created for this container. The hasImmutabilityPolicy public property is set to false by SRP if ImmutabilityPolicy has not been created for this container.
  final bool? hasImmutabilityPolicy;
  /// The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  final bool? hasLegalHold;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The ImmutabilityPolicy property of the container.
  final ImmutabilityPolicyPropertiesResponse? immutabilityPolicy;
  /// The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  final ImmutableStorageWithVersioningResponse? immutableStorageWithVersioning;
  /// Returns the date and time the container was last modified.
  final String? lastModifiedTime;
  /// Specifies whether the lease on a container is of infinite or fixed duration, only when the container is leased.
  final String? leaseDuration;
  /// Lease state of the container.
  final String? leaseState;
  /// The lease status of the container.
  final String? leaseStatus;
  /// The LegalHold property of the container.
  final LegalHoldPropertiesResponse? legalHold;
  /// A name-value pair to associate with the container as metadata.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String? name;
  /// Specifies whether data in the container may be accessed publicly and the level of access.
  final String? publicAccess;
  /// Remaining retention days for soft deleted blob container.
  final int? remainingRetentionDays;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The version of the deleted blob container.
  final String? version;

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
  const GetBlobContainerResult({
    this.azureApiVersion,
    this.defaultEncryptionScope,
    this.deleted,
    this.deletedTime,
    this.denyEncryptionScopeOverride,
    this.enableNfsV3AllSquash,
    this.enableNfsV3RootSquash,
    this.etag,
    this.hasImmutabilityPolicy,
    this.hasLegalHold,
    this.id,
    this.immutabilityPolicy,
    this.immutableStorageWithVersioning,
    this.lastModifiedTime,
    this.leaseDuration,
    this.leaseState,
    this.leaseStatus,
    this.legalHold,
    this.metadata,
    this.name,
    this.publicAccess,
    this.remainingRetentionDays,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'deleted': ?deleted,
      'deletedTime': ?deletedTime,
      'denyEncryptionScopeOverride': ?denyEncryptionScopeOverride,
      'enableNfsV3AllSquash': ?enableNfsV3AllSquash,
      'enableNfsV3RootSquash': ?enableNfsV3RootSquash,
      'etag': ?etag,
      'hasImmutabilityPolicy': ?hasImmutabilityPolicy,
      'hasLegalHold': ?hasLegalHold,
      'id': ?id,
      'immutabilityPolicy': ?immutabilityPolicy?.toMap(),
      'immutableStorageWithVersioning': ?immutableStorageWithVersioning?.toMap(),
      'lastModifiedTime': ?lastModifiedTime,
      'leaseDuration': ?leaseDuration,
      'leaseState': ?leaseState,
      'leaseStatus': ?leaseStatus,
      'legalHold': ?legalHold?.toMap(),
      'metadata': ?metadata,
      'name': ?name,
      'publicAccess': ?publicAccess,
      'remainingRetentionDays': ?remainingRetentionDays,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetBlobContainerResult.fromMap(Map<String, dynamic> map) {
    return GetBlobContainerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultEncryptionScope: (() { final guardedValue = map['defaultEncryptionScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletedTime: (() { final guardedValue = map['deletedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      denyEncryptionScopeOverride: (() { final guardedValue = map['denyEncryptionScopeOverride']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNfsV3AllSquash: (() { final guardedValue = map['enableNfsV3AllSquash']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNfsV3RootSquash: (() { final guardedValue = map['enableNfsV3RootSquash']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hasImmutabilityPolicy: (() { final guardedValue = map['hasImmutabilityPolicy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hasLegalHold: (() { final guardedValue = map['hasLegalHold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      immutabilityPolicy: (() { final guardedValue = map['immutabilityPolicy']; if (guardedValue == null) return null; return ImmutabilityPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      immutableStorageWithVersioning: (() { final guardedValue = map['immutableStorageWithVersioning']; if (guardedValue == null) return null; return ImmutableStorageWithVersioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leaseDuration: (() { final guardedValue = map['leaseDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leaseState: (() { final guardedValue = map['leaseState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leaseStatus: (() { final guardedValue = map['leaseStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      legalHold: (() { final guardedValue = map['legalHold']; if (guardedValue == null) return null; return LegalHoldPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicAccess: (() { final guardedValue = map['publicAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remainingRetentionDays: (() { final guardedValue = map['remainingRetentionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
