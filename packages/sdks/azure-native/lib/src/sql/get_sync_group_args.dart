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
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> syncGroupName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      syncGroupName: pulumi.Output.create<String>(map['syncGroupName'] as String),
    );
  }
}

