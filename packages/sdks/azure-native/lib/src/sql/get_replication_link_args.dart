// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_replication_link_args_doc}
/// Arguments for getReplicationLink.
/// {@endtemplate}
/// {@macro pulumi_sql_get_replication_link_args_doc}
class GetReplicationLinkArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the replication link.
  final pulumi.Input<String> linkId;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetReplicationLinkArgs].
  /// [databaseName] The name of the database.
  /// [linkId] The name of the replication link.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetReplicationLinkArgs({
    required this.databaseName,
    required this.linkId,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'linkId': linkId,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetReplicationLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationLinkArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      linkId: pulumi.Input.fromValue(map['linkId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
