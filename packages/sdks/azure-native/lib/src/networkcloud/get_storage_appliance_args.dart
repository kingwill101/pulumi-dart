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
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageApplianceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageApplianceName = pulumi.Input.asInput<String>(storageApplianceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageApplianceName': storageApplianceName,
    };
  }

  factory GetStorageApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageApplianceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageApplianceName: pulumi.Output.create<String>(map['storageApplianceName'] as String),
    );
  }
}

