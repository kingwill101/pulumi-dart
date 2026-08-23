// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_sap_hana_volume_data_protection_replication.dart';
import 'get_volume_group_sap_hana_volume_data_protection_snapshot_policy.dart';
import 'get_volume_group_sap_hana_volume_export_policy_rule.dart';

class GetVolumeGroupSapHanaVolume {
  /// The ID of the Capacity Pool.
  final pulumi.Input<String> capacityPoolId;
  /// A `dataProtectionReplication` block as defined below.
  final pulumi.Input<List<GetVolumeGroupSapHanaVolumeDataProtectionReplication>> dataProtectionReplications;
  /// A `dataProtectionSnapshotPolicy` block as defined below.
  final pulumi.Input<List<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy>> dataProtectionSnapshotPolicies;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys.
  final pulumi.Input<String> encryptionKeySource;
  /// A `exportPolicyRule` block as defined below.
  final pulumi.Input<List<GetVolumeGroupSapHanaVolumeExportPolicyRule>> exportPolicyRules;
  /// Volume ID.
  final pulumi.Input<String> id;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys.
  final pulumi.Input<String> keyVaultPrivateEndpointId;
  /// A `mountIpAddresses` block as defined below.
  final pulumi.Input<List<String>> mountIpAddresses;
  /// The name of this Application Volume Group for SAP HANA application.
  final pulumi.Input<String> name;
  /// Network features of the volume.
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
  /// Specifies the Availability Zone in which the Volume is located.
  final pulumi.Input<String> zone;

  /// Creates a new [GetVolumeGroupSapHanaVolume].
  /// [capacityPoolId] The ID of the Capacity Pool.
  /// [dataProtectionReplications] A `dataProtectionReplication` block as defined below.
  /// [dataProtectionSnapshotPolicies] A `dataProtectionSnapshotPolicy` block as defined below.
  /// [encryptionKeySource] The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys.
  /// [exportPolicyRules] A `exportPolicyRule` block as defined below.
  /// [id] Volume ID.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault, which is required when using customer-managed keys.
  /// [mountIpAddresses] A `mountIpAddresses` block as defined below.
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
  const GetVolumeGroupSapHanaVolume({
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
      'dataProtectionReplications': pulumi.Input.mapInputValue<List<GetVolumeGroupSapHanaVolumeDataProtectionReplication>, List<Map<String, dynamic>>>(dataProtectionReplications, (value) => pulumi.Input.encodeList<GetVolumeGroupSapHanaVolumeDataProtectionReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataProtectionSnapshotPolicies': pulumi.Input.mapInputValue<List<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy>, List<Map<String, dynamic>>>(dataProtectionSnapshotPolicies, (value) => pulumi.Input.encodeList<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKeySource': encryptionKeySource,
      'exportPolicyRules': pulumi.Input.mapInputValue<List<GetVolumeGroupSapHanaVolumeExportPolicyRule>, List<Map<String, dynamic>>>(exportPolicyRules, (value) => pulumi.Input.encodeList<GetVolumeGroupSapHanaVolumeExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      capacityPoolId: pulumi.Input.fromValue(map['capacityPoolId'] as String),
      dataProtectionReplications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeGroupSapHanaVolumeDataProtectionReplication>(map['dataProtectionReplications']!, (value) => GetVolumeGroupSapHanaVolumeDataProtectionReplication.fromMap((value as Map).cast<String, dynamic>()))),
      dataProtectionSnapshotPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy>(map['dataProtectionSnapshotPolicies']!, (value) => GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionKeySource: pulumi.Input.fromValue(map['encryptionKeySource'] as String),
      exportPolicyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeGroupSapHanaVolumeExportPolicyRule>(map['exportPolicyRules']!, (value) => GetVolumeGroupSapHanaVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
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
      storageQuotaInGb: pulumi.Input.fromValue(map['storageQuotaInGb'] as int),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      throughputInMibps: pulumi.Input.fromValue(map['throughputInMibps'] as double),
      volumePath: pulumi.Input.fromValue(map['volumePath'] as String),
      volumeSpecName: pulumi.Input.fromValue(map['volumeSpecName'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
