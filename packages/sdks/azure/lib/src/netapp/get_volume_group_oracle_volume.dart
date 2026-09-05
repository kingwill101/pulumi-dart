// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_oracle_volume_data_protection_replication.dart';
import 'get_volume_group_oracle_volume_data_protection_snapshot_policy.dart';
import 'get_volume_group_oracle_volume_export_policy_rule.dart';

class GetVolumeGroupOracleVolume {
  /// The ID of the Capacity Pool.
  final pulumi.Input<String> capacityPoolId;
  final pulumi.Input<List<GetVolumeGroupOracleVolumeDataProtectionReplication>> dataProtectionReplications;
  /// A `dataProtectionSnapshotPolicy` block as defined below.
  final pulumi.Input<List<GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy>> dataProtectionSnapshotPolicies;
  /// The encryption key source.
  final pulumi.Input<String> encryptionKeySource;
  /// A `exportPolicyRule` block as defined below.
  final pulumi.Input<List<GetVolumeGroupOracleVolumeExportPolicyRule>> exportPolicyRules;
  /// Volume ID.
  final pulumi.Input<String> id;
  /// The Private Endpoint ID for Key Vault when using customer managed keys.
  final pulumi.Input<String> keyVaultPrivateEndpointId;
  /// A `mountIpAddresses` block as defined below.
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
  /// [dataProtectionSnapshotPolicies] A `dataProtectionSnapshotPolicy` block as defined below.
  /// [encryptionKeySource] The encryption key source.
  /// [exportPolicyRules] A `exportPolicyRule` block as defined below.
  /// [id] Volume ID.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault when using customer managed keys.
  /// [mountIpAddresses] A `mountIpAddresses` block as defined below.
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
  const GetVolumeGroupOracleVolume({
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
      capacityPoolId: pulumi.Input.fromValue(map['capacityPoolId'] as String),
      dataProtectionReplications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeGroupOracleVolumeDataProtectionReplication>(map['dataProtectionReplications']!, (value) => GetVolumeGroupOracleVolumeDataProtectionReplication.fromMap((value as Map).cast<String, dynamic>()))),
      dataProtectionSnapshotPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy>(map['dataProtectionSnapshotPolicies']!, (value) => GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionKeySource: pulumi.Input.fromValue(map['encryptionKeySource'] as String),
      exportPolicyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeGroupOracleVolumeExportPolicyRule>(map['exportPolicyRules']!, (value) => GetVolumeGroupOracleVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      keyVaultPrivateEndpointId: pulumi.Input.fromValue(map['keyVaultPrivateEndpointId'] as String),
      mountIpAddresses: pulumi.Input.fromValue((map['mountIpAddresses'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkFeatures: pulumi.Input.fromValue(map['networkFeatures'] as String),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      proximityPlacementGroupId: pulumi.Input.fromValue(map['proximityPlacementGroupId'] as String),
      securityStyle: pulumi.Input.fromValue(map['securityStyle'] as String),
      serviceLevel: pulumi.Input.fromValue(map['serviceLevel'] as String),
      snapshotDirectoryVisible: pulumi.Input.fromValue(map['snapshotDirectoryVisible'] as bool),
      storageQuotaInGb: pulumi.Input.fromValue((map['storageQuotaInGb'] as num).toInt()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      throughputInMibps: pulumi.Input.fromValue((map['throughputInMibps'] as num).toDouble()),
      volumePath: pulumi.Input.fromValue(map['volumePath'] as String),
      volumeSpecName: pulumi.Input.fromValue(map['volumeSpecName'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
