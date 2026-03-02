// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_replication_link_args_doc}
/// The set of arguments for ReplicationLink.
/// {@endtemplate}
/// {@macro pulumi_sql_replication_link_args_doc}
class ReplicationLinkArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  final pulumi.Input<String>? linkId;
  /// Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
  final pulumi.Input<String>? linkType;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [ReplicationLinkArgs].
  /// [databaseName] The name of the database.
  /// [linkId] Optional.
  /// [linkType] Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  ReplicationLinkArgs({
    required this.databaseName,
    this.linkId,
    this.linkType,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'linkId': ?linkId,
      'linkType': ?linkType,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory ReplicationLinkArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationLinkArgs(
      databaseName: (map['databaseName'] as String).input(),
      linkId: map['linkId'] == null ? null : (map['linkId']! as String).input(),
      linkType: map['linkType'] == null ? null : (map['linkType']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

