// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_storage_appliance_args_doc}
/// Arguments for getStorageAppliance.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_storage_appliance_args_doc}
class GetStorageApplianceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the storage appliance.
  final pulumi.Input<String> storageApplianceName;

  /// Creates a new [GetStorageApplianceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageApplianceName] The name of the storage appliance.
  GetStorageApplianceArgs({
    required this.resourceGroupName,
    required this.storageApplianceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageApplianceName': storageApplianceName,
    };
  }

  factory GetStorageApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageApplianceArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageApplianceName: (map['storageApplianceName'] as String).input(),
    );
  }
}

