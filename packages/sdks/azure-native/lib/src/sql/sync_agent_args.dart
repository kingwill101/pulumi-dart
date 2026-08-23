// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_sync_agent_args_doc}
/// The set of arguments for SyncAgent.
/// {@endtemplate}
/// {@macro pulumi_sql_sync_agent_args_doc}
class SyncAgentArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server on which the sync agent is hosted.
  final pulumi.Input<String> serverName;
  /// The name of the sync agent.
  final pulumi.Input<String>? syncAgentName;
  /// ARM resource id of the sync database in the sync agent.
  final pulumi.Input<String>? syncDatabaseId;

  /// Creates a new [SyncAgentArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server on which the sync agent is hosted.
  /// [syncAgentName] The name of the sync agent.
  /// [syncDatabaseId] ARM resource id of the sync database in the sync agent.
  const SyncAgentArgs({
    required this.resourceGroupName,
    required this.serverName,
    this.syncAgentName,
    this.syncDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'syncAgentName': ?syncAgentName,
      'syncDatabaseId': ?syncDatabaseId,
    };
  }

  factory SyncAgentArgs.fromMap(Map<String, dynamic> map) {
    return SyncAgentArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      syncAgentName: (() { final guardedValue = map['syncAgentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncDatabaseId: (() { final guardedValue = map['syncDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
