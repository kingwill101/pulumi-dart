// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_data_protection_backup_policy.dart';
import 'get_volume_data_protection_replication.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The accept grow capacity pool for short term clone split property.
  final String acceptGrowCapacityPoolForShortTermCloneSplit;
  final String accountName;
  /// A data protecion backup policy block
  final List<GetVolumeDataProtectionBackupPolicy> dataProtectionBackupPolicies;
  /// Volume data protection replication block
  final List<GetVolumeDataProtectionReplication> dataProtectionReplications;
  final String encryptionKeySource;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyVaultPrivateEndpointId;
  /// Indicates if the volume is a large volume.
  final bool largeVolumeEnabled;
  /// The Azure Region where the NetApp Volume exists.
  final String location;
  /// A list of IPv4 Addresses which should be used to mount the volume.
  final List<String> mountIpAddresses;
  final String name;
  /// Network features in use `Basic` or `Standard`.
  final String networkFeatures;
  final String poolName;
  /// A list of protocol types enabled on volume.
  final List<String> protocols;
  final String resourceGroupName;
  /// Volume security style
  final String? securityStyle;
  /// The service level of the file system.
  final String serviceLevel;
  /// Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share.
  final bool smbAccessBasedEnumerationEnabled;
  /// Limits clients from browsing for an SMB share.
  final bool smbNonBrowsableEnabled;
  /// The maximum Storage Quota in Gigabytes allowed for a file system.
  final int storageQuotaInGb;
  /// The ID of a Subnet in which the NetApp Volume resides.
  final String subnetId;
  /// The unique file path of the volume.
  final String volumePath;
  /// The Availability Zone in which the Volume is located.
  final String zone;

  /// Creates a new [GetVolumeResult].
  /// [acceptGrowCapacityPoolForShortTermCloneSplit] The accept grow capacity pool for short term clone split property.
  /// [accountName] Required.
  /// [dataProtectionBackupPolicies] A data protecion backup policy block
  /// [dataProtectionReplications] Volume data protection replication block
  /// [encryptionKeySource] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultPrivateEndpointId] Required.
  /// [largeVolumeEnabled] Indicates if the volume is a large volume.
  /// [location] The Azure Region where the NetApp Volume exists.
  /// [mountIpAddresses] A list of IPv4 Addresses which should be used to mount the volume.
  /// [name] Required.
  /// [networkFeatures] Network features in use `Basic` or `Standard`.
  /// [poolName] Required.
  /// [protocols] A list of protocol types enabled on volume.
  /// [resourceGroupName] Required.
  /// [securityStyle] Volume security style
  /// [serviceLevel] The service level of the file system.
  /// [smbAccessBasedEnumerationEnabled] Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share.
  /// [smbNonBrowsableEnabled] Limits clients from browsing for an SMB share.
  /// [storageQuotaInGb] The maximum Storage Quota in Gigabytes allowed for a file system.
  /// [subnetId] The ID of a Subnet in which the NetApp Volume resides.
  /// [volumePath] The unique file path of the volume.
  /// [zone] The Availability Zone in which the Volume is located.
  GetVolumeResult({
    required this.acceptGrowCapacityPoolForShortTermCloneSplit,
    required this.accountName,
    required this.dataProtectionBackupPolicies,
    required this.dataProtectionReplications,
    required this.encryptionKeySource,
    required this.id,
    required this.keyVaultPrivateEndpointId,
    required this.largeVolumeEnabled,
    required this.location,
    required this.mountIpAddresses,
    required this.name,
    required this.networkFeatures,
    required this.poolName,
    required this.protocols,
    required this.resourceGroupName,
    this.securityStyle,
    required this.serviceLevel,
    required this.smbAccessBasedEnumerationEnabled,
    required this.smbNonBrowsableEnabled,
    required this.storageQuotaInGb,
    required this.subnetId,
    required this.volumePath,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptGrowCapacityPoolForShortTermCloneSplit': acceptGrowCapacityPoolForShortTermCloneSplit,
      'accountName': accountName,
      'dataProtectionBackupPolicies': pulumi.Input.encodeList<GetVolumeDataProtectionBackupPolicy, Map<String, dynamic>>(dataProtectionBackupPolicies, (value) => value.toMap()),
      'dataProtectionReplications': pulumi.Input.encodeList<GetVolumeDataProtectionReplication, Map<String, dynamic>>(dataProtectionReplications, (value) => value.toMap()),
      'encryptionKeySource': encryptionKeySource,
      'id': id,
      'keyVaultPrivateEndpointId': keyVaultPrivateEndpointId,
      'largeVolumeEnabled': largeVolumeEnabled,
      'location': location,
      'mountIpAddresses': mountIpAddresses,
      'name': name,
      'networkFeatures': networkFeatures,
      'poolName': poolName,
      'protocols': protocols,
      'resourceGroupName': resourceGroupName,
      'securityStyle': ?securityStyle,
      'serviceLevel': serviceLevel,
      'smbAccessBasedEnumerationEnabled': smbAccessBasedEnumerationEnabled,
      'smbNonBrowsableEnabled': smbNonBrowsableEnabled,
      'storageQuotaInGb': storageQuotaInGb,
      'subnetId': subnetId,
      'volumePath': volumePath,
      'zone': zone,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      acceptGrowCapacityPoolForShortTermCloneSplit: map['acceptGrowCapacityPoolForShortTermCloneSplit'] as String,
      accountName: map['accountName'] as String,
      dataProtectionBackupPolicies: pulumi.Input.decodeList<GetVolumeDataProtectionBackupPolicy>(map['dataProtectionBackupPolicies'], (value) => GetVolumeDataProtectionBackupPolicy.fromMap((value as Map).cast<String, dynamic>())),
      dataProtectionReplications: pulumi.Input.decodeList<GetVolumeDataProtectionReplication>(map['dataProtectionReplications'], (value) => GetVolumeDataProtectionReplication.fromMap((value as Map).cast<String, dynamic>())),
      encryptionKeySource: map['encryptionKeySource'] as String,
      id: map['id'] as String,
      keyVaultPrivateEndpointId: map['keyVaultPrivateEndpointId'] as String,
      largeVolumeEnabled: map['largeVolumeEnabled'] as bool,
      location: map['location'] as String,
      mountIpAddresses: (map['mountIpAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      networkFeatures: map['networkFeatures'] as String,
      poolName: map['poolName'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      securityStyle: map['securityStyle'] == null ? null : map['securityStyle'] as String,
      serviceLevel: map['serviceLevel'] as String,
      smbAccessBasedEnumerationEnabled: map['smbAccessBasedEnumerationEnabled'] as bool,
      smbNonBrowsableEnabled: map['smbNonBrowsableEnabled'] as bool,
      storageQuotaInGb: map['storageQuotaInGb'] as int,
      subnetId: map['subnetId'] as String,
      volumePath: map['volumePath'] as String,
      zone: map['zone'] as String,
    );
  }
}

