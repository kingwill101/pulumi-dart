// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_sync_group_args_doc}
/// Arguments for getSyncGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_sync_group_args_doc}
class GetSyncGroupArgs {
  /// The name of the database on which the sync group is hosted.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the sync group.
  final pulumi.Input<String> syncGroupName;

  /// Creates a new [GetSyncGroupArgs].
  /// [databaseName] The name of the database on which the sync group is hosted.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [syncGroupName] The name of the sync group.
  GetSyncGroupArgs({
    required this.databaseName,
    required this.resourceGroupName,
    required this.serverName,
    required this.syncGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'syncGroupName': syncGroupName,
    };
  }

  factory GetSyncGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncGroupArgs(
      databaseName: (map['databaseName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      syncGroupName: (map['syncGroupName'] as String).input(),
    );
  }
}

