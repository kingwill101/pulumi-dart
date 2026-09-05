// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_sap_hana_volume_data_protection_replication.dart';
import 'volume_group_sap_hana_volume_data_protection_snapshot_policy.dart';
import 'volume_group_sap_hana_volume_export_policy_rule.dart';

class VolumeGroupSapHanaVolume {
  /// The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> capacityPoolId;
  /// A `dataProtectionReplication` block as defined below. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<VolumeGroupSapHanaVolumeDataProtectionReplication?>? dataProtectionReplication;
  /// A `dataProtectionSnapshotPolicy` block as defined below.
  final pulumi.Input<VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy?>? dataProtectionSnapshotPolicy;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `keyVaultPrivateEndpointId`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String?>? encryptionKeySource;
  /// One or more `exportPolicyRule` blocks as defined below.
  final pulumi.Input<List<VolumeGroupSapHanaVolumeExportPolicyRule>> exportPolicyRules;
  /// The ID of the Application Volume Group.
  final pulumi.Input<String?>? id;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryptionKeySource`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String?>? keyVaultPrivateEndpointId;
  final pulumi.Input<List<String>?>? mountIpAddresses;
  /// The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> name;
  /// Network features of the volume. Possible values are `Basic` or `Standard`. Default value is `Basic`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String?>? networkFeatures;
  /// The target volume protocol expressed as a list. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume group, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3Enabled = false` and `nfsv41Enabled = true` in export policy rules). Supported values include `NFSv3` or `NFSv4.1`, multi-protocol is not supported. Please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details.
  ///
  /// &gt; **Note:** NFSv3 protocol is only supported for backup volumes (`data-backup`, `log-backup`) in SAP HANA volume groups. Critical volumes (`data`, `log`, `shared`) must use NFSv4.1. When converting protocols on backup volumes, ensure export policy rules are updated accordingly to avoid configuration drift.
  final pulumi.Input<String> protocols;
  /// The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements.
  final pulumi.Input<String?>? proximityPlacementGroupId;
  /// Volume security style. Possible values are `ntfs` and `unix`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> securityStyle;
  /// Volume security style. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> serviceLevel;
  /// Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<bool> snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  final pulumi.Input<int> storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags which should be assigned to the Application Volume Group.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Throughput of this volume in Mibps.
  final pulumi.Input<double> throughputInMibps;
  /// A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> volumePath;
  /// Volume specification name. Possible values are `data`, `log`, `shared`, `data-backup` and `log-backup`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> volumeSpecName;
  /// Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement). Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String?>? zone;

  /// Creates a new [VolumeGroupSapHanaVolume].
  /// [capacityPoolId] The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [dataProtectionReplication] A `dataProtectionReplication` block as defined below. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [dataProtectionSnapshotPolicy] A `dataProtectionSnapshotPolicy` block as defined below.
  /// [encryptionKeySource] The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `keyVaultPrivateEndpointId`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [exportPolicyRules] One or more `exportPolicyRule` blocks as defined below.
  /// [id] The ID of the Application Volume Group.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryptionKeySource`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [mountIpAddresses] Optional.
  /// [name] The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [networkFeatures] Network features of the volume. Possible values are `Basic` or `Standard`. Default value is `Basic`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [protocols] The target volume protocol expressed as a list. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume group, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3Enabled = false` and `nfsv41Enabled = true` in export policy rules). Supported values include `NFSv3` or `NFSv4.1`, multi-protocol is not supported. Please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details.
  /// [proximityPlacementGroupId] The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements.
  /// [securityStyle] Volume security style. Possible values are `ntfs` and `unix`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [serviceLevel] Volume security style. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [snapshotDirectoryVisible] Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [storageQuotaInGb] The maximum Storage Quota allowed for a file system in Gigabytes.
  /// [subnetId] The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [tags] A mapping of tags which should be assigned to the Application Volume Group.
  /// [throughputInMibps] Throughput of this volume in Mibps.
  /// [volumePath] A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [volumeSpecName] Volume specification name. Possible values are `data`, `log`, `shared`, `data-backup` and `log-backup`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [zone] Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement). Changing this forces a new Application Volume Group to be created and data will be lost.
  const VolumeGroupSapHanaVolume({
    required this.capacityPoolId,
    this.dataProtectionReplication,
    this.dataProtectionSnapshotPolicy,
    this.encryptionKeySource,
    required this.exportPolicyRules,
    this.id,
    this.keyVaultPrivateEndpointId,
    this.mountIpAddresses,
    required this.name,
    this.networkFeatures,
    required this.protocols,
    this.proximityPlacementGroupId,
    required this.securityStyle,
    required this.serviceLevel,
    required this.snapshotDirectoryVisible,
    required this.storageQuotaInGb,
    required this.subnetId,
    this.tags,
    required this.throughputInMibps,
    required this.volumePath,
    required this.volumeSpecName,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityPoolId': capacityPoolId,
      'dataProtectionReplication': ?pulumi.Input.mapOptionalInputValue<VolumeGroupSapHanaVolumeDataProtectionReplication, Map<String, dynamic>>(dataProtectionReplication, (value) => value.toMap()),
      'dataProtectionSnapshotPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy, Map<String, dynamic>>(dataProtectionSnapshotPolicy, (value) => value.toMap()),
      'encryptionKeySource': ?encryptionKeySource,
      'exportPolicyRules': pulumi.Input.mapInputValue<List<VolumeGroupSapHanaVolumeExportPolicyRule>, List<Map<String, dynamic>>>(exportPolicyRules, (value) => pulumi.Input.encodeList<VolumeGroupSapHanaVolumeExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'keyVaultPrivateEndpointId': ?keyVaultPrivateEndpointId,
      'mountIpAddresses': ?mountIpAddresses,
      'name': name,
      'networkFeatures': ?networkFeatures,
      'protocols': protocols,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'securityStyle': securityStyle,
      'serviceLevel': serviceLevel,
      'snapshotDirectoryVisible': snapshotDirectoryVisible,
      'storageQuotaInGb': storageQuotaInGb,
      'subnetId': subnetId,
      'tags': ?tags,
      'throughputInMibps': throughputInMibps,
      'volumePath': volumePath,
      'volumeSpecName': volumeSpecName,
      'zone': ?zone,
    };
  }

  factory VolumeGroupSapHanaVolume.fromMap(Map<String, dynamic> map) {
    return VolumeGroupSapHanaVolume(
      capacityPoolId: pulumi.Input.fromValue(map['capacityPoolId'] as String),
      dataProtectionReplication: (() { final guardedValue = map['dataProtectionReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeGroupSapHanaVolumeDataProtectionReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProtectionSnapshotPolicy: (() { final guardedValue = map['dataProtectionSnapshotPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionKeySource: (() { final guardedValue = map['encryptionKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportPolicyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeGroupSapHanaVolumeExportPolicyRule>(map['exportPolicyRules']!, (value) => VolumeGroupSapHanaVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultPrivateEndpointId: (() { final guardedValue = map['keyVaultPrivateEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountIpAddresses: (() { final guardedValue = map['mountIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkFeatures: (() { final guardedValue = map['networkFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: pulumi.Input.fromValue(map['protocols'] as String),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityStyle: pulumi.Input.fromValue(map['securityStyle'] as String),
      serviceLevel: pulumi.Input.fromValue(map['serviceLevel'] as String),
      snapshotDirectoryVisible: pulumi.Input.fromValue(map['snapshotDirectoryVisible'] as bool),
      storageQuotaInGb: pulumi.Input.fromValue((map['storageQuotaInGb'] as num).toInt()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputInMibps: pulumi.Input.fromValue((map['throughputInMibps'] as num).toDouble()),
      volumePath: pulumi.Input.fromValue(map['volumePath'] as String),
      volumeSpecName: pulumi.Input.fromValue(map['volumeSpecName'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
