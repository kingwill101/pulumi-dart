// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_partner_server.dart';
import 'failover_group_read_write_endpoint_failover_policy.dart';

/// {@template pulumi_mssql_failover_group_failover_group_args_doc}
/// The set of arguments for FailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_mssql_failover_group_failover_group_args_doc}
class FailoverGroupArgs {
  /// A set of database names to include in the failover group.
  final pulumi.Input<List<String>>? databases;
  /// The name of the Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `partner_server` block as defined below.
  final pulumi.Input<List<FailoverGroupPartnerServer>> partnerServers;
  /// A `read_write_endpoint_failover_policy` block as defined below.
  final pulumi.Input<FailoverGroupReadWriteEndpointFailoverPolicy> readWriteEndpointFailoverPolicy;
  /// Whether failover is enabled for the readonly endpoint. Defaults to `false`.
  final pulumi.Input<bool>? readonlyEndpointFailoverPolicyEnabled;
  /// The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FailoverGroupArgs].
  /// [databases] A set of database names to include in the failover group.
  /// [name] The name of the Failover Group. Changing this forces a new resource to be created.
  /// [partnerServers] A `partner_server` block as defined below.
  /// [readWriteEndpointFailoverPolicy] A `read_write_endpoint_failover_policy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Whether failover is enabled for the readonly endpoint. Defaults to `false`.
  /// [serverId] The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  FailoverGroupArgs({
    this.databases,
    this.name,
    required this.partnerServers,
    required this.readWriteEndpointFailoverPolicy,
    this.readonlyEndpointFailoverPolicyEnabled,
    required this.serverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'name': ?name,
      'partnerServers': pulumi.Input.mapInputValue<List<FailoverGroupPartnerServer>, List<Map<String, dynamic>>>(partnerServers, (value) => pulumi.Input.encodeList<FailoverGroupPartnerServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readWriteEndpointFailoverPolicy': pulumi.Input.mapInputValue<FailoverGroupReadWriteEndpointFailoverPolicy, Map<String, dynamic>>(readWriteEndpointFailoverPolicy, (value) => value.toMap()),
      'readonlyEndpointFailoverPolicyEnabled': ?readonlyEndpointFailoverPolicyEnabled,
      'serverId': serverId,
      'tags': ?tags,
    };
  }

  factory FailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return FailoverGroupArgs(
      databases: map['databases'] == null ? null : ((map['databases'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partnerServers: (pulumi.Input.decodeList<FailoverGroupPartnerServer>(map['partnerServers'], (value) => FailoverGroupPartnerServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readWriteEndpointFailoverPolicy: (FailoverGroupReadWriteEndpointFailoverPolicy.fromMap((map['readWriteEndpointFailoverPolicy'] as Map).cast<String, dynamic>())).input(),
      readonlyEndpointFailoverPolicyEnabled: map['readonlyEndpointFailoverPolicyEnabled'] == null ? null : (map['readonlyEndpointFailoverPolicyEnabled'] as bool).input(),
      serverId: (map['serverId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

