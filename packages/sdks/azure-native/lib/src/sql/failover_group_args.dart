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
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      failoverGroupName: (() { final guardedValue = map['failoverGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerServers: pulumi.Input.fromValue(pulumi.Input.decodeList<PartnerInfo>(map['partnerServers']!, (value) => PartnerInfo.fromMap((value as Map).cast<String, dynamic>()))),
      readOnlyEndpoint: (() { final guardedValue = map['readOnlyEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FailoverGroupReadOnlyEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readWriteEndpoint: pulumi.Input.fromValue(FailoverGroupReadWriteEndpoint.fromMap((map['readWriteEndpoint']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

