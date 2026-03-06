// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_sync_get_sync_args_doc}
/// Arguments for getSync.
/// {@endtemplate}
/// {@macro pulumi_storage_get_sync_get_sync_args_doc}
class GetSyncArgs {
  /// The name of this Storage Sync.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Storage Sync exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSyncArgs].
  /// [name] The name of this Storage Sync.
  /// [resourceGroupName] The name of the Resource Group where the Storage Sync exists.
  const GetSyncArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSyncArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

