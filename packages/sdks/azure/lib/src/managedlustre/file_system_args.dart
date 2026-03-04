// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_encryption_key.dart';
import 'file_system_hsm_setting.dart';
import 'file_system_identity.dart';
import 'file_system_maintenance_window.dart';
import 'file_system_root_squash.dart';

/// {@template pulumi_managedlustre_file_system_file_system_args_doc}
/// The set of arguments for FileSystem.
/// {@endtemplate}
/// {@macro pulumi_managedlustre_file_system_file_system_args_doc}
class FileSystemArgs {
  /// An `encryption_key` block as defined below.
  ///
  /// &gt; **Note:** Removing `encryption_key` forces a new resource to be created.
  final pulumi.Input<FileSystemEncryptionKey>? encryptionKey;

  /// A `hsm_setting` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<FileSystemHsmSetting>? hsmSetting;

  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<FileSystemIdentity>? identity;

  /// The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// A `maintenance_window` block as defined below.
  final pulumi.Input<FileSystemMaintenanceWindow> maintenanceWindow;

  /// The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A `root_squash` block as defined below.
  final pulumi.Input<FileSystemRootSquash>? rootSquash;

  /// The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuName;

  /// The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created.
  final pulumi.Input<int> storageCapacityInTb;

  /// The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// A mapping of tags which should be assigned to the Azure Managed Lustre File System.
  final pulumi.Input<Map<String, String>>? tags;

  /// A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [FileSystemArgs].
  /// [encryptionKey] An `encryption_key` block as defined below.
  /// [hsmSetting] A `hsm_setting` block as defined below. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  /// [maintenanceWindow] A `maintenance_window` block as defined below.
  /// [name] The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  /// [rootSquash] A `root_squash` block as defined below.
  /// [skuName] The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created.
  /// [storageCapacityInTb] The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Managed Lustre File System.
  /// [zones] A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created.
  FileSystemArgs({
    this.encryptionKey,
    this.hsmSetting,
    this.identity,
    this.location,
    required this.maintenanceWindow,
    this.name,
    required this.resourceGroupName,
    this.rootSquash,
    required this.skuName,
    required this.storageCapacityInTb,
    required this.subnetId,
    this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemEncryptionKey,
            Map<String, dynamic>
          >(encryptionKey, (value) => value.toMap()),
      'hsmSetting':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemHsmSetting,
            Map<String, dynamic>
          >(hsmSetting, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow':
          pulumi.Input.mapInputValue<
            FileSystemMaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'rootSquash':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemRootSquash,
            Map<String, dynamic>
          >(rootSquash, (value) => value.toMap()),
      'skuName': skuName,
      'storageCapacityInTb': storageCapacityInTb,
      'subnetId': subnetId,
      'tags': ?tags,
      'zones': zones,
    };
  }

  factory FileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemArgs(
      encryptionKey: (() {
        final guardedValue = map['encryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemEncryptionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hsmSetting: (() {
        final guardedValue = map['hsmSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemHsmSetting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceWindow: pulumi.Input.fromValue(
        FileSystemMaintenanceWindow.fromMap(
          (map['maintenanceWindow']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      rootSquash: (() {
        final guardedValue = map['rootSquash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemRootSquash.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      storageCapacityInTb: pulumi.Input.fromValue(
        map['storageCapacityInTb'] as int,
      ),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
