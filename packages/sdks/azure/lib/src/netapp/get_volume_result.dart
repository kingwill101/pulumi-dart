// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_data_protection_advanced_ransomware.dart';
import 'get_volume_data_protection_backup_policy.dart';
import 'get_volume_data_protection_replication.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The accept grow capacity pool for short term clone split property.
  final String? acceptGrowCapacityPoolForShortTermCloneSplit;
  final String? accountName;
  /// An Advanced Ransomware Protection (ARP) data protection block.
  final List<GetVolumeDataProtectionAdvancedRansomware>? dataProtectionAdvancedRansomwares;
  /// A data protecion backup policy block
  final List<GetVolumeDataProtectionBackupPolicy>? dataProtectionBackupPolicies;
  /// Volume data protection replication block
  final List<GetVolumeDataProtectionReplication>? dataProtectionReplications;
  final String? encryptionKeySource;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyVaultPrivateEndpointId;
  /// Indicates if the volume is a large volume.
  final bool? largeVolumeEnabled;
  /// The Azure Region where the NetApp Volume exists.
  final String? location;
  /// A list of IPv4 Addresses which should be used to mount the volume.
  final List<String>? mountIpAddresses;
  final String? name;
  /// Network features in use `Basic` or `Standard`.
  final String? networkFeatures;
  final String? poolName;
  /// A list of protocol types enabled on volume.
  final List<String>? protocols;
  final String? resourceGroupName;
  /// Volume security style
  final String? securityStyle;
  /// The service level of the file system.
  final String? serviceLevel;
  /// Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share.
  final bool? smbAccessBasedEnumerationEnabled;
  /// Limits clients from browsing for an SMB share.
  final bool? smbNonBrowsableEnabled;
  /// The maximum Storage Quota in Gigabytes allowed for a file system.
  final int? storageQuotaInGb;
  /// The ID of a Subnet in which the NetApp Volume resides.
  final String? subnetId;
  /// The unique file path of the volume.
  final String? volumePath;
  /// The Availability Zone in which the Volume is located.
  final String? zone;

  /// Creates a new [GetVolumeResult].
  /// [acceptGrowCapacityPoolForShortTermCloneSplit] The accept grow capacity pool for short term clone split property.
  /// [accountName] Optional.
  /// [dataProtectionAdvancedRansomwares] An Advanced Ransomware Protection (ARP) data protection block.
  /// [dataProtectionBackupPolicies] A data protecion backup policy block
  /// [dataProtectionReplications] Volume data protection replication block
  /// [encryptionKeySource] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultPrivateEndpointId] Optional.
  /// [largeVolumeEnabled] Indicates if the volume is a large volume.
  /// [location] The Azure Region where the NetApp Volume exists.
  /// [mountIpAddresses] A list of IPv4 Addresses which should be used to mount the volume.
  /// [name] Optional.
  /// [networkFeatures] Network features in use `Basic` or `Standard`.
  /// [poolName] Optional.
  /// [protocols] A list of protocol types enabled on volume.
  /// [resourceGroupName] Optional.
  /// [securityStyle] Volume security style
  /// [serviceLevel] The service level of the file system.
  /// [smbAccessBasedEnumerationEnabled] Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share.
  /// [smbNonBrowsableEnabled] Limits clients from browsing for an SMB share.
  /// [storageQuotaInGb] The maximum Storage Quota in Gigabytes allowed for a file system.
  /// [subnetId] The ID of a Subnet in which the NetApp Volume resides.
  /// [volumePath] The unique file path of the volume.
  /// [zone] The Availability Zone in which the Volume is located.
  const GetVolumeResult({
    this.acceptGrowCapacityPoolForShortTermCloneSplit,
    this.accountName,
    this.dataProtectionAdvancedRansomwares,
    this.dataProtectionBackupPolicies,
    this.dataProtectionReplications,
    this.encryptionKeySource,
    this.id,
    this.keyVaultPrivateEndpointId,
    this.largeVolumeEnabled,
    this.location,
    this.mountIpAddresses,
    this.name,
    this.networkFeatures,
    this.poolName,
    this.protocols,
    this.resourceGroupName,
    this.securityStyle,
    this.serviceLevel,
    this.smbAccessBasedEnumerationEnabled,
    this.smbNonBrowsableEnabled,
    this.storageQuotaInGb,
    this.subnetId,
    this.volumePath,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptGrowCapacityPoolForShortTermCloneSplit': ?acceptGrowCapacityPoolForShortTermCloneSplit,
      'accountName': ?accountName,
      'dataProtectionAdvancedRansomwares': ?(() { final guardedValue = dataProtectionAdvancedRansomwares; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeDataProtectionAdvancedRansomware, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataProtectionBackupPolicies': ?(() { final guardedValue = dataProtectionBackupPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeDataProtectionBackupPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataProtectionReplications': ?(() { final guardedValue = dataProtectionReplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeDataProtectionReplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encryptionKeySource': ?encryptionKeySource,
      'id': ?id,
      'keyVaultPrivateEndpointId': ?keyVaultPrivateEndpointId,
      'largeVolumeEnabled': ?largeVolumeEnabled,
      'location': ?location,
      'mountIpAddresses': ?mountIpAddresses,
      'name': ?name,
      'networkFeatures': ?networkFeatures,
      'poolName': ?poolName,
      'protocols': ?protocols,
      'resourceGroupName': ?resourceGroupName,
      'securityStyle': ?securityStyle,
      'serviceLevel': ?serviceLevel,
      'smbAccessBasedEnumerationEnabled': ?smbAccessBasedEnumerationEnabled,
      'smbNonBrowsableEnabled': ?smbNonBrowsableEnabled,
      'storageQuotaInGb': ?storageQuotaInGb,
      'subnetId': ?subnetId,
      'volumePath': ?volumePath,
      'zone': ?zone,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      acceptGrowCapacityPoolForShortTermCloneSplit: (() { final guardedValue = map['acceptGrowCapacityPoolForShortTermCloneSplit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataProtectionAdvancedRansomwares: (() { final guardedValue = map['dataProtectionAdvancedRansomwares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeDataProtectionAdvancedRansomware>(guardedValue, (value) => GetVolumeDataProtectionAdvancedRansomware.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataProtectionBackupPolicies: (() { final guardedValue = map['dataProtectionBackupPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeDataProtectionBackupPolicy>(guardedValue, (value) => GetVolumeDataProtectionBackupPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataProtectionReplications: (() { final guardedValue = map['dataProtectionReplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeDataProtectionReplication>(guardedValue, (value) => GetVolumeDataProtectionReplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      encryptionKeySource: (() { final guardedValue = map['encryptionKeySource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultPrivateEndpointId: (() { final guardedValue = map['keyVaultPrivateEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      largeVolumeEnabled: (() { final guardedValue = map['largeVolumeEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mountIpAddresses: (() { final guardedValue = map['mountIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFeatures: (() { final guardedValue = map['networkFeatures']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityStyle: (() { final guardedValue = map['securityStyle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLevel: (() { final guardedValue = map['serviceLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smbAccessBasedEnumerationEnabled: (() { final guardedValue = map['smbAccessBasedEnumerationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      smbNonBrowsableEnabled: (() { final guardedValue = map['smbNonBrowsableEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      storageQuotaInGb: (() { final guardedValue = map['storageQuotaInGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumePath: (() { final guardedValue = map['volumePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
