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
  GetSyncMemberArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> syncGroupName,
    required pulumi.Output<String> syncMemberName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName),
      syncMemberName = pulumi.Input.asInput<String>(syncMemberName);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      syncGroupName: pulumi.Output.create<String>(map['syncGroupName'] as String),
      syncMemberName: pulumi.Output.create<String>(map['syncMemberName'] as String),
    );
  }
}

