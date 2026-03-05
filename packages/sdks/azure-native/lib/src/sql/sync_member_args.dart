// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_sync_member_args_doc}
/// The set of arguments for SyncMember.
/// {@endtemplate}
/// {@macro pulumi_sql_sync_member_args_doc}
class SyncMemberArgs {
  /// Database name of the member database in the sync member.
  final pulumi.Input<String> databaseName;
  /// Database type of the sync member.
  final pulumi.Input<String>? databaseType;
  /// Password of the member database in the sync member.
  final pulumi.Input<String>? password;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Server name of the member database in the sync member
  final pulumi.Input<String> serverName;
  /// SQL Server database id of the sync member.
  final pulumi.Input<String>? sqlServerDatabaseId;
  /// ARM resource id of the sync agent in the sync member.
  final pulumi.Input<String>? syncAgentId;
  /// Sync direction of the sync member.
  final pulumi.Input<String>? syncDirection;
  /// The name of the sync group on which the sync member is hosted.
  final pulumi.Input<String> syncGroupName;
  /// ARM resource id of the sync member logical database, for sync members in Azure.
  final pulumi.Input<String>? syncMemberAzureDatabaseResourceId;
  /// The name of the sync member.
  final pulumi.Input<String>? syncMemberName;
  /// Whether to use private link connection.
  final pulumi.Input<bool>? usePrivateLinkConnection;
  /// User name of the member database in the sync member.
  final pulumi.Input<String>? userName;

  /// Creates a new [SyncMemberArgs].
  /// [databaseName] Database name of the member database in the sync member.
  /// [databaseType] Database type of the sync member.
  /// [password] Password of the member database in the sync member.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] Server name of the member database in the sync member
  /// [sqlServerDatabaseId] SQL Server database id of the sync member.
  /// [syncAgentId] ARM resource id of the sync agent in the sync member.
  /// [syncDirection] Sync direction of the sync member.
  /// [syncGroupName] The name of the sync group on which the sync member is hosted.
  /// [syncMemberAzureDatabaseResourceId] ARM resource id of the sync member logical database, for sync members in Azure.
  /// [syncMemberName] The name of the sync member.
  /// [usePrivateLinkConnection] Whether to use private link connection.
  /// [userName] User name of the member database in the sync member.
  SyncMemberArgs({
    required this.databaseName,
    this.databaseType,
    this.password,
    required this.resourceGroupName,
    required this.serverName,
    this.sqlServerDatabaseId,
    this.syncAgentId,
    this.syncDirection,
    required this.syncGroupName,
    this.syncMemberAzureDatabaseResourceId,
    this.syncMemberName,
    this.usePrivateLinkConnection,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'databaseType': ?databaseType,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sqlServerDatabaseId': ?sqlServerDatabaseId,
      'syncAgentId': ?syncAgentId,
      'syncDirection': ?syncDirection,
      'syncGroupName': syncGroupName,
      'syncMemberAzureDatabaseResourceId': ?syncMemberAzureDatabaseResourceId,
      'syncMemberName': ?syncMemberName,
      'usePrivateLinkConnection': ?usePrivateLinkConnection,
      'userName': ?userName,
    };
  }

  factory SyncMemberArgs.fromMap(Map<String, dynamic> map) {
    return SyncMemberArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      sqlServerDatabaseId: (() { final guardedValue = map['sqlServerDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncAgentId: (() { final guardedValue = map['syncAgentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncDirection: (() { final guardedValue = map['syncDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncGroupName: pulumi.Input.fromValue(map['syncGroupName'] as String),
      syncMemberAzureDatabaseResourceId: (() { final guardedValue = map['syncMemberAzureDatabaseResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncMemberName: (() { final guardedValue = map['syncMemberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usePrivateLinkConnection: (() { final guardedValue = map['usePrivateLinkConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

