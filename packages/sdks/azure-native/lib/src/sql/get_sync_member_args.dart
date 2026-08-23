// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_sync_member_args_doc}
/// Arguments for getSyncMember.
/// {@endtemplate}
/// {@macro pulumi_sql_get_sync_member_args_doc}
class GetSyncMemberArgs {
  /// The name of the database on which the sync group is hosted.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the sync group on which the sync member is hosted.
  final pulumi.Input<String> syncGroupName;
  /// The name of the sync member.
  final pulumi.Input<String> syncMemberName;

  /// Creates a new [GetSyncMemberArgs].
  /// [databaseName] The name of the database on which the sync group is hosted.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [syncGroupName] The name of the sync group on which the sync member is hosted.
  /// [syncMemberName] The name of the sync member.
  const GetSyncMemberArgs({
    required this.databaseName,
    required this.resourceGroupName,
    required this.serverName,
    required this.syncGroupName,
    required this.syncMemberName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'syncGroupName': syncGroupName,
      'syncMemberName': syncMemberName,
    };
  }

  factory GetSyncMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncMemberArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      syncGroupName: pulumi.Input.fromValue(map['syncGroupName'] as String),
      syncMemberName: pulumi.Input.fromValue(map['syncMemberName'] as String),
    );
  }
}
