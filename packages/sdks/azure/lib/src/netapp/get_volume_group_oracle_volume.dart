// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_oracle_volume_data_protection_replication.dart';
import 'get_volume_group_oracle_volume_data_protection_snapshot_policy.dart';
import 'get_volume_group_oracle_volume_export_policy_rule.dart';

class GetVolumeGroupOracleVolume {
  /// The ID of the Capacity Pool.
  final pulumi.Input<String> capacityPoolId;
  final pulumi.Input<List<GetVolumeGroupOracleVolumeDataProtectionReplication>> dataProtectionReplications;
  /// A `data_protection_snapshot_policy` block as defined below.
  final pulumi.Input<List<GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy>> dataProtectionSnapshotPolicies;
  /// The encryption key source.
  final pulumi.Input<String> encryptionKeySource;
  /// A `export_policy_rule` block as defined below.
  final pulumi.Input<List<GetVolumeGroupOracleVolumeExportPolicyRule>> exportPolicyRules;
  /// Volume ID.
  final pulumi.Input<String> id;
  /// The Private Endpoint ID for Key Vault when using customer managed keys.
  final pulumi.Input<String> keyVaultPrivateEndpointId;
  /// A `mount_ip_addresses` block as defined below.
  final pulumi.Input<List<String>> mountIpAddresses;
  /// The name of this Application Volume Group for Oracle application.
  final pulumi.Input<String> name;
  /// Network feature in use at the time of volume creation.
  final pulumi.Input<String> networkFeatures;
  /// A `protocols` block as defined below.
  final pulumi.Input<List<String>> protocols;
  /// The ID of the proximity placement group.
  final pulumi.Input<String> proximityPlacementGroupId;
  /// Volume security style.
  final pulumi.Input<String> securityStyle;
  /// The target performance of the file system.
  final pulumi.Input<String> serviceLevel;
  /// Is the .snapshot (NFS clients) path of a volume visible?
  final pulumi.Input<bool> snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  final pulumi.Input<int> storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags assigned to the Application Volume Group.
  final pulumi.Input<Map<String, String>> tags;
  /// Throughput of this volume in Mibps.
  final pulumi.Input<double> throughputInMibps;
  /// A unique file path for the volume.
  final pulumi.Input<String> volumePath;
  /// Volume spec name.
  final pulumi.Input<String> volumeSpecName;
  final pulumi.Input<String> zone;

  /// Creates a new [GetVolumeGroupOracleVolume].
  /// [capacityPoolId] The ID of the Capacity Pool.
  /// [dataProtectionReplications] Required.
  /// [dataProtectionSnapshotPolicies] A `data_protection_snapshot_policy` block as defined below.
  /// [encryptionKeySource] The encryption key source.
  /// [exportPolicyRules] A `export_policy_rule` block as defined below.
  /// [id] Volume ID.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault when using customer managed keys.
  /// [mountIpAddresses] A `mount_ip_addresses` block as defined below.
  /// [name] The name of this Application Volume Group for Oracle application.
  /// [networkFeatures] Network feature in use at the time of volume creation.
  /// [protocols] A `protocols` block as defined below.
  /// [proximityPlacementGroupId] The ID of the proximity placement group.
  /// [securityStyle] Volume security style.
  /// [serviceLevel] The target performance of the file system.
  /// [snapshotDirectoryVisible] Is the .snapshot (NFS clients) path of a volume visible?
  /// [storageQuotaInGb] The maximum Storage Quota allowed for a file system in Gigabytes.
  /// [subnetId] The ID of the Subnet the NetApp Volume resides in.
  /// [tags] A mapping of tags assigned to the Application Volume Group.
  /// [throughputInMibps] Throughput of this volume in Mibps.
  /// [volumePath] A unique file path for the volume.
  /// [volumeSpecName] Volume spec name.
  /// [zone] Required.
  GetVolumeGroupOracleVolume({
    required this.capacityPoolId,
    required this.dataProtectionReplications,
    required this.dataProtectionSnapshotPolicies,
    required this.encryptionKeySource,
    required this.exportPolicyRules,
    required this.id,
    required this.keyVaultPrivateEndpointId,
    required this.mountIpAddresses,
    required this.name,
    required this.networkFeatures,
    required this.protocols,
    required this.proximityPlacementGroupId,
    required this.securityStyle,
    required this.serviceLevel,
    required this.snapshotDirectoryVisible,
    required this.storageQuotaInGb,
    required this.subnetId,
    required this.tags,
    required this.throughputInMibps,
    required this.volumePath,
    required this.volumeSpecName,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityPoolId': capacityPoolId,
      'dataProtectionReplications': pulumi.Input.mapInputValue<List<GetVolumeGroupOracleVolumeDataProtectionReplication>, List<Map<String, dynamic>>>(dataProtectionReplications, (value) => pulumi.Input.encodeList<GetVolumeGroupOracleVolumeDataProtectionReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataProtectionSnapshotPolicies': pulumi.Input.mapInputValue<List<GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy>, List<Map<String, dynamic>>>(dataProtectionSnapshotPolicies, (value) => pulumi.Input.encodeList<GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKeySource': encryptionKeySource,
      'exportPolicyRules': pulumi.Input.mapInputValue<List<GetVolumeGroupOracleVolumeExportPolicyRule>, List<Map<String, dynamic>>>(exportPolicyRules, (value) => pulumi.Input.encodeList<GetVolumeGroupOracleVolumeExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'keyVaultPrivateEndpointId': keyVaultPrivateEndpointId,
      'mountIpAddresses': mountIpAddresses,
      'name': name,
      'networkFeatures': networkFeatures,
      'protocols': protocols,
      'proximityPlacementGroupId': proximityPlacementGroupId,
      'securityStyle': securityStyle,
      'serviceLevel': serviceLevel,
      'snapshotDirectoryVisible': snapshotDirectoryVisible,
      'storageQuotaInGb': storageQuotaInGb,
      'subnetId': subnetId,
      'tags': tags,
      'throughputInMibps': throughputInMibps,
      'volumePath': volumePath,
      'volumeSpecName': volumeSpecName,
      'zone': zone,
    };
  }

  factory GetVolumeGroupOracleVolume.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupOracleVolume(
      capacityPoolId: (map['capacityPoolId'] as String).input(),
      dataProtectionReplications: (pulumi.Input.decodeList<GetVolumeGroupOracleVolumeDataProtectionReplication>(map['dataProtectionReplications'], (value) => GetVolumeGroupOracleVolumeDataProtectionReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataProtectionSnapshotPolicies: (pulumi.Input.decodeList<GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy>(map['dataProtectionSnapshotPolicies'], (value) => GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionKeySource: (map['encryptionKeySource'] as String).input(),
      exportPolicyRules: (pulumi.Input.decodeList<GetVolumeGroupOracleVolumeExportPolicyRule>(map['exportPolicyRules'], (value) => GetVolumeGroupOracleVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      keyVaultPrivateEndpointId: (map['keyVaultPrivateEndpointId'] as String).input(),
      mountIpAddresses: ((map['mountIpAddresses'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      networkFeatures: (map['networkFeatures'] as String).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      proximityPlacementGroupId: (map['proximityPlacementGroupId'] as String).input(),
      securityStyle: (map['securityStyle'] as String).input(),
      serviceLevel: (map['serviceLevel'] as String).input(),
      snapshotDirectoryVisible: (map['snapshotDirectoryVisible'] as bool).input(),
      storageQuotaInGb: (map['storageQuotaInGb'] as int).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      throughputInMibps: (map['throughputInMibps'] as double).input(),
      volumePath: (map['volumePath'] as String).input(),
      volumeSpecName: (map['volumeSpecName'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

