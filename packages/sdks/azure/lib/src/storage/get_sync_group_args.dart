// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_sync_group_get_sync_group_args_doc}
/// Arguments for getSyncGroup.
/// {@endtemplate}
/// {@macro pulumi_storage_get_sync_group_get_sync_group_args_doc}
class GetSyncGroupArgs {
  /// The name of this Storage Sync Group.
  final pulumi.Input<String> name;
  /// The resource ID of the Storage Sync where this Storage Sync Group is.
  final pulumi.Input<String> storageSyncId;

  /// Creates a new [GetSyncGroupArgs].
  /// [name] The name of this Storage Sync Group.
  /// [storageSyncId] The resource ID of the Storage Sync where this Storage Sync Group is.
  GetSyncGroupArgs({
    required this.name,
    required this.storageSyncId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageSyncId': storageSyncId,
    };
  }

  factory GetSyncGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncGroupArgs(
      name: (map['name'] as String).input(),
      storageSyncId: (map['storageSyncId'] as String).input(),
    );
  }
}

