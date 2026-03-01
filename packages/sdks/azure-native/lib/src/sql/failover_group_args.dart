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
    pulumi.Output<List<String>>? databases,
    pulumi.Output<String>? failoverGroupName,
    required pulumi.Output<List<PartnerInfo>> partnerServers,
    pulumi.Output<FailoverGroupReadOnlyEndpoint>? readOnlyEndpoint,
    required pulumi.Output<FailoverGroupReadWriteEndpoint> readWriteEndpoint,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? secondaryType,
    required pulumi.Output<String> serverName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databases = pulumi.Input.asOptionalInput<List<String>>(databases),
      failoverGroupName = pulumi.Input.asOptionalInput<String>(failoverGroupName),
      partnerServers = pulumi.Input.asInput<List<PartnerInfo>>(partnerServers),
      readOnlyEndpoint = pulumi.Input.asOptionalInput<FailoverGroupReadOnlyEndpoint>(readOnlyEndpoint),
      readWriteEndpoint = pulumi.Input.asInput<FailoverGroupReadWriteEndpoint>(readWriteEndpoint),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secondaryType = pulumi.Input.asOptionalInput<String>(secondaryType),
      serverName = pulumi.Input.asInput<String>(serverName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      databases: map['databases'] == null ? null : pulumi.Output.create<List<String>>((map['databases'] as List).cast<String>()),
      failoverGroupName: map['failoverGroupName'] == null ? null : pulumi.Output.create<String>(map['failoverGroupName'] as String),
      partnerServers: pulumi.Output.create<List<PartnerInfo>>(pulumi.Input.decodeList<PartnerInfo>(map['partnerServers'], (value) => PartnerInfo.fromMap((value as Map).cast<String, dynamic>()))),
      readOnlyEndpoint: map['readOnlyEndpoint'] == null ? null : pulumi.Output.create<FailoverGroupReadOnlyEndpoint>(FailoverGroupReadOnlyEndpoint.fromMap((map['readOnlyEndpoint'] as Map).cast<String, dynamic>())),
      readWriteEndpoint: pulumi.Output.create<FailoverGroupReadWriteEndpoint>(FailoverGroupReadWriteEndpoint.fromMap((map['readWriteEndpoint'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryType: map['secondaryType'] == null ? null : pulumi.Output.create<String>(map['secondaryType'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

