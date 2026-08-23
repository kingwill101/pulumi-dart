// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_encryption_settings.dart';
import 'aml_filesystem_hsm.dart';
import 'aml_filesystem_identity.dart';
import 'aml_filesystem_maintenance_window.dart';
import 'aml_filesystem_root_squash_settings.dart';
import 'sku_name.dart';

/// {@template pulumi_storagecache_aml_filesystem_args_doc}
/// The set of arguments for AmlFilesystem.
/// {@endtemplate}
/// {@macro pulumi_storagecache_aml_filesystem_args_doc}
class AmlFilesystemArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String>? amlFilesystemName;
  /// Specifies encryption settings of the AML file system.
  final pulumi.Input<AmlFilesystemEncryptionSettings>? encryptionSettings;
  /// Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  final pulumi.Input<String> filesystemSubnet;
  /// Hydration and archive settings and status
  final pulumi.Input<AmlFilesystemHsm>? hsm;
  /// The managed identity used by the AML file system, if configured.
  final pulumi.Input<AmlFilesystemIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Start time of a 30-minute weekly maintenance window.
  final pulumi.Input<AmlFilesystemMaintenanceWindow> maintenanceWindow;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies root squash settings of the AML file system.
  final pulumi.Input<AmlFilesystemRootSquashSettings>? rootSquashSettings;
  /// SKU for the resource.
  final pulumi.Input<SkuName>? sku;
  /// The size of the AML file system, in TiB. This might be rounded up.
  final pulumi.Input<double> storageCapacityTiB;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Availability zones for resources. This field should only contain a single element in the array.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [AmlFilesystemArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [encryptionSettings] Specifies encryption settings of the AML file system.
  /// [filesystemSubnet] Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  /// [hsm] Hydration and archive settings and status
  /// [identity] The managed identity used by the AML file system, if configured.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Start time of a 30-minute weekly maintenance window.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rootSquashSettings] Specifies root squash settings of the AML file system.
  /// [sku] SKU for the resource.
  /// [storageCapacityTiB] The size of the AML file system, in TiB. This might be rounded up.
  /// [tags] Resource tags.
  /// [zones] Availability zones for resources. This field should only contain a single element in the array.
  const AmlFilesystemArgs({
    this.amlFilesystemName,
    this.encryptionSettings,
    required this.filesystemSubnet,
    this.hsm,
    this.identity,
    this.location,
    required this.maintenanceWindow,
    required this.resourceGroupName,
    this.rootSquashSettings,
    this.sku,
    required this.storageCapacityTiB,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': ?amlFilesystemName,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemEncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'filesystemSubnet': filesystemSubnet,
      'hsm': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemHsm, Map<String, dynamic>>(hsm, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': pulumi.Input.mapInputValue<AmlFilesystemMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'rootSquashSettings': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemRootSquashSettings, Map<String, dynamic>>(rootSquashSettings, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuName, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageCapacityTiB': storageCapacityTiB,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory AmlFilesystemArgs.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemArgs(
      amlFilesystemName: (() { final guardedValue = map['amlFilesystemName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlFilesystemEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filesystemSubnet: pulumi.Input.fromValue(map['filesystemSubnet'] as String),
      hsm: (() { final guardedValue = map['hsm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlFilesystemHsm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlFilesystemIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: pulumi.Input.fromValue(AmlFilesystemMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rootSquashSettings: (() { final guardedValue = map['rootSquashSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlFilesystemRootSquashSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageCapacityTiB: pulumi.Input.fromValue(map['storageCapacityTiB'] as double),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
