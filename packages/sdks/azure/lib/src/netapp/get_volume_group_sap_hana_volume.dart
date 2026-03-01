// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_sap_hana_volume_data_protection_replication.dart';
import 'get_volume_group_sap_hana_volume_data_protection_snapshot_policy.dart';
import 'get_volume_group_sap_hana_volume_export_policy_rule.dart';

class GetVolumeGroupSapHanaVolume {
  /// The ID of the Capacity Pool.
  final String capacityPoolId;
  /// A `data_protection_replication` block as defined below.
  final List<GetVolumeGroupSapHanaVolumeDataProtectionReplication> dataProtectionReplications;
  /// A `data_protection_snapshot_policy` block as defined below.
  final List<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy> dataProtectionSnapshotPolicies;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys.
  final String encryptionKeySource;
  /// A `export_policy_rule` block as defined below.
  final List<GetVolumeGroupSapHanaVolumeExportPolicyRule> exportPolicyRules;
  /// Volume ID.
  final String id;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys.
  final String keyVaultPrivateEndpointId;
  /// A `mount_ip_addresses` block as defined below.
  final List<String> mountIpAddresses;
  /// The name of this Application Volume Group for SAP HANA application.
  final String name;
  /// Network features of the volume.
  final String networkFeatures;
  /// A `protocols` block as defined below.
  final List<String> protocols;
  /// The ID of the proximity placement group.
  final String proximityPlacementGroupId;
  /// Volume security style.
  final String securityStyle;
  /// The target performance of the file system.
  final String serviceLevel;
  /// Is the .snapshot (NFS clients) path of a volume visible?
  final bool snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  final int storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in.
  final String subnetId;
  /// A mapping of tags assigned to the Application Volume Group.
  final Map<String, String> tags;
  /// Throughput of this volume in Mibps.
  final double throughputInMibps;
  /// A unique file path for the volume.
  final String volumePath;
  /// Volume spec name.
  final String volumeSpecName;
  /// Specifies the Availability Zone in which the Volume is located.
  final String zone;

  /// Creates a new [GetVolumeGroupSapHanaVolume].
  /// [capacityPoolId] The ID of the Capacity Pool.
  /// [dataProtectionReplications] A `data_protection_replication` block as defined below.
  /// [dataProtectionSnapshotPolicies] A `data_protection_snapshot_policy` block as defined below.
  /// [encryptionKeySource] The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys.
  /// [exportPolicyRules] A `export_policy_rule` block as defined below.
  /// [id] Volume ID.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault, which is required when using customer-managed keys.
  /// [mountIpAddresses] A `mount_ip_addresses` block as defined below.
  /// [name] The name of this Application Volume Group for SAP HANA application.
  /// [networkFeatures] Network features of the volume.
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
  /// [zone] Specifies the Availability Zone in which the Volume is located.
  GetVolumeGroupSapHanaVolume({
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
      'dataProtectionReplications': pulumi.Input.encodeList<GetVolumeGroupSapHanaVolumeDataProtectionReplication, Map<String, dynamic>>(dataProtectionReplications, (value) => value.toMap()),
      'dataProtectionSnapshotPolicies': pulumi.Input.encodeList<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy, Map<String, dynamic>>(dataProtectionSnapshotPolicies, (value) => value.toMap()),
      'encryptionKeySource': encryptionKeySource,
      'exportPolicyRules': pulumi.Input.encodeList<GetVolumeGroupSapHanaVolumeExportPolicyRule, Map<String, dynamic>>(exportPolicyRules, (value) => value.toMap()),
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

  factory GetVolumeGroupSapHanaVolume.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupSapHanaVolume(
      capacityPoolId: map['capacityPoolId'] as String,
      dataProtectionReplications: pulumi.Input.decodeList<GetVolumeGroupSapHanaVolumeDataProtectionReplication>(map['dataProtectionReplications'], (value) => GetVolumeGroupSapHanaVolumeDataProtectionReplication.fromMap((value as Map).cast<String, dynamic>())),
      dataProtectionSnapshotPolicies: pulumi.Input.decodeList<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy>(map['dataProtectionSnapshotPolicies'], (value) => GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap((value as Map).cast<String, dynamic>())),
      encryptionKeySource: map['encryptionKeySource'] as String,
      exportPolicyRules: pulumi.Input.decodeList<GetVolumeGroupSapHanaVolumeExportPolicyRule>(map['exportPolicyRules'], (value) => GetVolumeGroupSapHanaVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      keyVaultPrivateEndpointId: map['keyVaultPrivateEndpointId'] as String,
      mountIpAddresses: (map['mountIpAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      networkFeatures: map['networkFeatures'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] as String,
      securityStyle: map['securityStyle'] as String,
      serviceLevel: map['serviceLevel'] as String,
      snapshotDirectoryVisible: map['snapshotDirectoryVisible'] as bool,
      storageQuotaInGb: map['storageQuotaInGb'] as int,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      throughputInMibps: map['throughputInMibps'] as double,
      volumePath: map['volumePath'] as String,
      volumeSpecName: map['volumeSpecName'] as String,
      zone: map['zone'] as String,
    );
  }
}

