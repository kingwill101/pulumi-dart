// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_sync_agent_args_doc}
/// Arguments for getSyncAgent.
/// {@endtemplate}
/// {@macro pulumi_sql_get_sync_agent_args_doc}
class GetSyncAgentArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server on which the sync agent is hosted.
  final pulumi.Input<String> serverName;
  /// The name of the sync agent.
  final pulumi.Input<String> syncAgentName;

  /// Creates a new [GetSyncAgentArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server on which the sync agent is hosted.
  /// [syncAgentName] The name of the sync agent.
  const GetSyncAgentArgs({
    required this.resourceGroupName,
    required this.serverName,
    required this.syncAgentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'syncAgentName': syncAgentName,
    };
  }

  factory GetSyncAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncAgentArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      syncAgentName: pulumi.Input.fromValue(map['syncAgentName'] as String),
    );
  }
}
