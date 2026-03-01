// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_get_storage_sync_service_args_doc}
/// Arguments for getStorageSyncService.
/// {@endtemplate}
/// {@macro pulumi_storagesync_get_storage_sync_service_args_doc}
class GetStorageSyncServiceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;

  /// Creates a new [GetStorageSyncServiceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  GetStorageSyncServiceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageSyncServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageSyncServiceName': storageSyncServiceName,
    };
  }

  factory GetStorageSyncServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageSyncServiceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageSyncServiceName: pulumi.Output.create<String>(map['storageSyncServiceName'] as String),
    );
  }
}

