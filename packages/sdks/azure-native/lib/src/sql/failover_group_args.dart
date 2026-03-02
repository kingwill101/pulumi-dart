// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_read_only_endpoint.dart';
import 'failover_group_read_write_endpoint.dart';
import 'partner_info.dart';

/// {@template pulumi_sql_failover_group_args_doc}
/// The set of arguments for FailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_failover_group_args_doc}
class FailoverGroupArgs {
  /// List of databases in the failover group.
  final pulumi.Input<List<String>>? databases;
  /// The name of the failover group.
  final pulumi.Input<String>? failoverGroupName;
  /// List of partner server information for the failover group.
  final pulumi.Input<List<PartnerInfo>> partnerServers;
  /// Read-only endpoint of the failover group instance.
  final pulumi.Input<FailoverGroupReadOnlyEndpoint>? readOnlyEndpoint;
  /// Read-write endpoint of the failover group instance.
  final pulumi.Input<FailoverGroupReadWriteEndpoint> readWriteEndpoint;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Databases secondary type on partner server.
  final pulumi.Input<String>? secondaryType;
  /// The name of the server containing the failover group.
  final pulumi.Input<String> serverName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FailoverGroupArgs].
  /// [databases] List of databases in the failover group.
  /// [failoverGroupName] The name of the failover group.
  /// [partnerServers] List of partner server information for the failover group.
  /// [readOnlyEndpoint] Read-only endpoint of the failover group instance.
  /// [readWriteEndpoint] Read-write endpoint of the failover group instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [secondaryType] Databases secondary type on partner server.
  /// [serverName] The name of the server containing the failover group.
  /// [tags] Resource tags.
  FailoverGroupArgs({
    this.databases,
    this.failoverGroupName,
    required this.partnerServers,
    this.readOnlyEndpoint,
    required this.readWriteEndpoint,
    required this.resourceGroupName,
    this.secondaryType,
    required this.serverName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'failoverGroupName': ?failoverGroupName,
      'partnerServers': pulumi.Input.mapInputValue<List<PartnerInfo>, List<Map<String, dynamic>>>(partnerServers, (value) => pulumi.Input.encodeList<PartnerInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readOnlyEndpoint': ?pulumi.Input.mapOptionalInputValue<FailoverGroupReadOnlyEndpoint, Map<String, dynamic>>(readOnlyEndpoint, (value) => value.toMap()),
      'readWriteEndpoint': pulumi.Input.mapInputValue<FailoverGroupReadWriteEndpoint, Map<String, dynamic>>(readWriteEndpoint, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secondaryType': ?secondaryType,
      'serverName': serverName,
      'tags': ?tags,
    };
  }

  factory FailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return FailoverGroupArgs(
      databases: map['databases'] == null ? null : ((map['databases'] as List).cast<String>()).input(),
      failoverGroupName: map['failoverGroupName'] == null ? null : (map['failoverGroupName'] as String).input(),
      partnerServers: (pulumi.Input.decodeList<PartnerInfo>(map['partnerServers'], (value) => PartnerInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readOnlyEndpoint: map['readOnlyEndpoint'] == null ? null : (FailoverGroupReadOnlyEndpoint.fromMap((map['readOnlyEndpoint'] as Map).cast<String, dynamic>())).input(),
      readWriteEndpoint: (FailoverGroupReadWriteEndpoint.fromMap((map['readWriteEndpoint'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secondaryType: map['secondaryType'] == null ? null : (map['secondaryType'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

