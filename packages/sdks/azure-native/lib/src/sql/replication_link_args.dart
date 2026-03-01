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
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? linkId,
    pulumi.Output<String>? linkType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      linkId = pulumi.Input.asOptionalInput<String>(linkId),
      linkType = pulumi.Input.asOptionalInput<String>(linkType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
      linkType: map['linkType'] == null ? null : pulumi.Output.create<String>(map['linkType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

