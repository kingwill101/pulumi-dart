// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_sync_group_args_doc}
/// The set of arguments for SyncGroup.
/// {@endtemplate}
/// {@macro pulumi_storagesync_sync_group_args_doc}
class SyncGroupArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;

  /// Name of Sync Group resource.
  final pulumi.Input<String>? syncGroupName;

  /// Creates a new [SyncGroupArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  SyncGroupArgs({
    required this.resourceGroupName,
    required this.storageSyncServiceName,
    this.syncGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': ?syncGroupName,
    };
  }

  factory SyncGroupArgs.fromMap(Map<String, dynamic> map) {
    return SyncGroupArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageSyncServiceName: pulumi.Input.fromValue(
        map['storageSyncServiceName'] as String,
      ),
      syncGroupName: (() {
        final guardedValue = map['syncGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
