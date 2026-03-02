// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_properties_file_share_paid_bursting.dart';
import 'signed_identifier.dart';

/// {@template pulumi_storage_file_share_args_doc}
/// The set of arguments for FileShare.
/// {@endtemplate}
/// {@macro pulumi_storage_file_share_args_doc}
class FileShareArgs {
  /// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.
  final pulumi.Input<String>? accessTier;
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The authentication protocol that is used for the file share. Can only be specified when creating a share.
  final pulumi.Input<String>? enabledProtocols;
  /// Optional, used to expand the properties within share's properties. Valid values are: snapshots. Should be passed as a string with delimiter ','
  final pulumi.Input<String>? expand;
  /// File Share Paid Bursting properties.
  final pulumi.Input<FileSharePropertiesFileSharePaidBursting>? fileSharePaidBursting;
  /// A name-value pair to associate with the share as metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The provisioned bandwidth of the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned bandwidth.
  final pulumi.Input<int>? provisionedBandwidthMibps;
  /// The provisioned IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned IOPS.
  final pulumi.Input<int>? provisionedIops;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The property is for NFS share only. The default is NoRootSquash.
  final pulumi.Input<String>? rootSquash;
  /// The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String>? shareName;
  /// The provisioned size of the share, in gibibytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400. For file shares created under Files Provisioned v2 account type, please refer to the GetFileServiceUsage API response for the minimum and maximum allowed provisioned storage size.
  final pulumi.Input<int>? shareQuota;
  /// List of stored access policies specified on the share.
  final pulumi.Input<List<SignedIdentifier>>? signedIdentifiers;

  /// Creates a new [FileShareArgs].
  /// [accessTier] Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [enabledProtocols] The authentication protocol that is used for the file share. Can only be specified when creating a share.
  /// [expand] Optional, used to expand the properties within share's properties. Valid values are: snapshots. Should be passed as a string with delimiter ','
  /// [fileSharePaidBursting] File Share Paid Bursting properties.
  /// [metadata] A name-value pair to associate with the share as metadata.
  /// [provisionedBandwidthMibps] The provisioned bandwidth of the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned bandwidth.
  /// [provisionedIops] The provisioned IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned IOPS.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [rootSquash] The property is for NFS share only. The default is NoRootSquash.
  /// [shareName] The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [shareQuota] The provisioned size of the share, in gibibytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400. For file shares created under Files Provisioned v2 account type, please refer to the GetFileServiceUsage API response for the minimum and maximum allowed provisioned storage size.
  /// [signedIdentifiers] List of stored access policies specified on the share.
  FileShareArgs({
    this.accessTier,
    required this.accountName,
    this.enabledProtocols,
    this.expand,
    this.fileSharePaidBursting,
    this.metadata,
    this.provisionedBandwidthMibps,
    this.provisionedIops,
    required this.resourceGroupName,
    this.rootSquash,
    this.shareName,
    this.shareQuota,
    this.signedIdentifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'accountName': accountName,
      'enabledProtocols': ?enabledProtocols,
      'expand': ?expand,
      'fileSharePaidBursting': ?pulumi.Input.mapOptionalInputValue<FileSharePropertiesFileSharePaidBursting, Map<String, dynamic>>(fileSharePaidBursting, (value) => value.toMap()),
      'metadata': ?metadata,
      'provisionedBandwidthMibps': ?provisionedBandwidthMibps,
      'provisionedIops': ?provisionedIops,
      'resourceGroupName': resourceGroupName,
      'rootSquash': ?rootSquash,
      'shareName': ?shareName,
      'shareQuota': ?shareQuota,
      'signedIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<SignedIdentifier>, List<Map<String, dynamic>>>(signedIdentifiers, (value) => pulumi.Input.encodeList<SignedIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FileShareArgs.fromMap(Map<String, dynamic> map) {
    return FileShareArgs(
      accessTier: map['accessTier'] == null ? null : (map['accessTier'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      enabledProtocols: map['enabledProtocols'] == null ? null : (map['enabledProtocols'] as String).input(),
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      fileSharePaidBursting: map['fileSharePaidBursting'] == null ? null : (FileSharePropertiesFileSharePaidBursting.fromMap((map['fileSharePaidBursting'] as Map).cast<String, dynamic>())).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      provisionedBandwidthMibps: map['provisionedBandwidthMibps'] == null ? null : (map['provisionedBandwidthMibps'] as int).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rootSquash: map['rootSquash'] == null ? null : (map['rootSquash'] as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName'] as String).input(),
      shareQuota: map['shareQuota'] == null ? null : (map['shareQuota'] as int).input(),
      signedIdentifiers: map['signedIdentifiers'] == null ? null : (pulumi.Input.decodeList<SignedIdentifier>(map['signedIdentifiers'], (value) => SignedIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

