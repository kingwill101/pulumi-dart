// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_properties_response_file_share_paid_bursting.dart';
import 'signed_identifier_response.dart';

/// Result data returned by getFileShare.
class GetFileShareResult {
  /// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.
  final String? accessTier;
  /// Indicates the last modification time for share access tier.
  final String accessTierChangeTime;
  /// Indicates if there is a pending transition for access tier.
  final String accessTierStatus;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates whether the share was deleted.
  final bool deleted;
  /// The deleted time if the share was deleted.
  final String deletedTime;
  /// The authentication protocol that is used for the file share. Can only be specified when creating a share.
  final String? enabledProtocols;
  /// Resource Etag.
  final String etag;
  /// File Share Paid Bursting properties.
  final FileSharePropertiesResponseFileSharePaidBursting? fileSharePaidBursting;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The calculated burst IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type.
  final int includedBurstIops;
  /// Returns the date and time the share was last modified.
  final String lastModifiedTime;
  /// Specifies whether the lease on a share is of infinite or fixed duration, only when the share is leased.
  final String leaseDuration;
  /// Lease state of the share.
  final String leaseState;
  /// The lease status of the share.
  final String leaseStatus;
  /// The calculated maximum burst credits for the share. This property is only for file shares created under Files Provisioned v2 account type.
  final double maxBurstCreditsForIops;
  /// A name-value pair to associate with the share as metadata.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String name;
  /// Returns the next allowed provisioned bandwidth downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type.
  final String nextAllowedProvisionedBandwidthDowngradeTime;
  /// Returns the next allowed provisioned IOPS downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type.
  final String nextAllowedProvisionedIopsDowngradeTime;
  /// Returns the next allowed provisioned storage size downgrade time for the share. This property is only for file shares created under Files Provisioned v1 SSD and Files Provisioned v2 account type
  final String nextAllowedQuotaDowngradeTime;
  /// The provisioned bandwidth of the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned bandwidth.
  final int? provisionedBandwidthMibps;
  /// The provisioned IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned IOPS.
  final int? provisionedIops;
  /// Remaining retention days for share that was soft deleted.
  final int remainingRetentionDays;
  /// The property is for NFS share only. The default is NoRootSquash.
  final String? rootSquash;
  /// The provisioned size of the share, in gibibytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400. For file shares created under Files Provisioned v2 account type, please refer to the GetFileServiceUsage API response for the minimum and maximum allowed provisioned storage size.
  final int? shareQuota;
  /// The approximate size of the data stored on the share. Note that this value may not include all recently created or recently resized files.
  final double shareUsageBytes;
  /// List of stored access policies specified on the share.
  final List<SignedIdentifierResponse>? signedIdentifiers;
  /// Creation time of share snapshot returned in the response of list shares with expand param "snapshots".
  final String snapshotTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The version of the share.
  final String version;

  /// Creates a new [GetFileShareResult].
  /// [accessTier] Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.
  /// [accessTierChangeTime] Indicates the last modification time for share access tier.
  /// [accessTierStatus] Indicates if there is a pending transition for access tier.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deleted] Indicates whether the share was deleted.
  /// [deletedTime] The deleted time if the share was deleted.
  /// [enabledProtocols] The authentication protocol that is used for the file share. Can only be specified when creating a share.
  /// [etag] Resource Etag.
  /// [fileSharePaidBursting] File Share Paid Bursting properties.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [includedBurstIops] The calculated burst IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type.
  /// [lastModifiedTime] Returns the date and time the share was last modified.
  /// [leaseDuration] Specifies whether the lease on a share is of infinite or fixed duration, only when the share is leased.
  /// [leaseState] Lease state of the share.
  /// [leaseStatus] The lease status of the share.
  /// [maxBurstCreditsForIops] The calculated maximum burst credits for the share. This property is only for file shares created under Files Provisioned v2 account type.
  /// [metadata] A name-value pair to associate with the share as metadata.
  /// [name] The name of the resource
  /// [nextAllowedProvisionedBandwidthDowngradeTime] Returns the next allowed provisioned bandwidth downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type.
  /// [nextAllowedProvisionedIopsDowngradeTime] Returns the next allowed provisioned IOPS downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type.
  /// [nextAllowedQuotaDowngradeTime] Returns the next allowed provisioned storage size downgrade time for the share. This property is only for file shares created under Files Provisioned v1 SSD and Files Provisioned v2 account type
  /// [provisionedBandwidthMibps] The provisioned bandwidth of the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned bandwidth.
  /// [provisionedIops] The provisioned IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned IOPS.
  /// [remainingRetentionDays] Remaining retention days for share that was soft deleted.
  /// [rootSquash] The property is for NFS share only. The default is NoRootSquash.
  /// [shareQuota] The provisioned size of the share, in gibibytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400. For file shares created under Files Provisioned v2 account type, please refer to the GetFileServiceUsage API response for the minimum and maximum allowed provisioned storage size.
  /// [shareUsageBytes] The approximate size of the data stored on the share. Note that this value may not include all recently created or recently resized files.
  /// [signedIdentifiers] List of stored access policies specified on the share.
  /// [snapshotTime] Creation time of share snapshot returned in the response of list shares with expand param "snapshots".
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version of the share.
  const GetFileShareResult({
    this.accessTier,
    required this.accessTierChangeTime,
    required this.accessTierStatus,
    required this.azureApiVersion,
    required this.deleted,
    required this.deletedTime,
    this.enabledProtocols,
    required this.etag,
    this.fileSharePaidBursting,
    required this.id,
    required this.includedBurstIops,
    required this.lastModifiedTime,
    required this.leaseDuration,
    required this.leaseState,
    required this.leaseStatus,
    required this.maxBurstCreditsForIops,
    this.metadata,
    required this.name,
    required this.nextAllowedProvisionedBandwidthDowngradeTime,
    required this.nextAllowedProvisionedIopsDowngradeTime,
    required this.nextAllowedQuotaDowngradeTime,
    this.provisionedBandwidthMibps,
    this.provisionedIops,
    required this.remainingRetentionDays,
    this.rootSquash,
    this.shareQuota,
    required this.shareUsageBytes,
    this.signedIdentifiers,
    required this.snapshotTime,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'accessTierChangeTime': accessTierChangeTime,
      'accessTierStatus': accessTierStatus,
      'azureApiVersion': azureApiVersion,
      'deleted': deleted,
      'deletedTime': deletedTime,
      'enabledProtocols': ?enabledProtocols,
      'etag': etag,
      'fileSharePaidBursting': ?fileSharePaidBursting?.toMap(),
      'id': id,
      'includedBurstIops': includedBurstIops,
      'lastModifiedTime': lastModifiedTime,
      'leaseDuration': leaseDuration,
      'leaseState': leaseState,
      'leaseStatus': leaseStatus,
      'maxBurstCreditsForIops': maxBurstCreditsForIops,
      'metadata': ?metadata,
      'name': name,
      'nextAllowedProvisionedBandwidthDowngradeTime': nextAllowedProvisionedBandwidthDowngradeTime,
      'nextAllowedProvisionedIopsDowngradeTime': nextAllowedProvisionedIopsDowngradeTime,
      'nextAllowedQuotaDowngradeTime': nextAllowedQuotaDowngradeTime,
      'provisionedBandwidthMibps': ?provisionedBandwidthMibps,
      'provisionedIops': ?provisionedIops,
      'remainingRetentionDays': remainingRetentionDays,
      'rootSquash': ?rootSquash,
      'shareQuota': ?shareQuota,
      'shareUsageBytes': shareUsageBytes,
      'signedIdentifiers': ?(() { final guardedValue = signedIdentifiers; if (guardedValue == null) return null; return pulumi.Input.encodeList<SignedIdentifierResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'snapshotTime': snapshotTime,
      'type': type,
      'version': version,
    };
  }

  factory GetFileShareResult.fromMap(Map<String, dynamic> map) {
    return GetFileShareResult(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accessTierChangeTime: map['accessTierChangeTime'] as String,
      accessTierStatus: map['accessTierStatus'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      deleted: map['deleted'] as bool,
      deletedTime: map['deletedTime'] as String,
      enabledProtocols: (() { final guardedValue = map['enabledProtocols']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      fileSharePaidBursting: (() { final guardedValue = map['fileSharePaidBursting']; if (guardedValue == null) return null; return FileSharePropertiesResponseFileSharePaidBursting.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      includedBurstIops: map['includedBurstIops'] as int,
      lastModifiedTime: map['lastModifiedTime'] as String,
      leaseDuration: map['leaseDuration'] as String,
      leaseState: map['leaseState'] as String,
      leaseStatus: map['leaseStatus'] as String,
      maxBurstCreditsForIops: map['maxBurstCreditsForIops'] as double,
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: map['name'] as String,
      nextAllowedProvisionedBandwidthDowngradeTime: map['nextAllowedProvisionedBandwidthDowngradeTime'] as String,
      nextAllowedProvisionedIopsDowngradeTime: map['nextAllowedProvisionedIopsDowngradeTime'] as String,
      nextAllowedQuotaDowngradeTime: map['nextAllowedQuotaDowngradeTime'] as String,
      provisionedBandwidthMibps: (() { final guardedValue = map['provisionedBandwidthMibps']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return guardedValue as int; })(),
      remainingRetentionDays: map['remainingRetentionDays'] as int,
      rootSquash: (() { final guardedValue = map['rootSquash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareQuota: (() { final guardedValue = map['shareQuota']; if (guardedValue == null) return null; return guardedValue as int; })(),
      shareUsageBytes: map['shareUsageBytes'] as double,
      signedIdentifiers: (() { final guardedValue = map['signedIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SignedIdentifierResponse>(guardedValue, (value) => SignedIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      snapshotTime: map['snapshotTime'] as String,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

