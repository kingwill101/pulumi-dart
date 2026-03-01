// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_partner_server.dart';
import 'failover_group_read_write_endpoint_failover_policy.dart';

/// Input properties used for looking up and filtering FailoverGroup resources.
class FailoverGroupState {
  /// A set of database names to include in the failover group.
  final pulumi.Input<List<String>>? databases;
  /// The name of the Failover Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `partner_server` block as defined below.
  final pulumi.Input<List<FailoverGroupPartnerServer>>? partnerServers;
  /// A `read_write_endpoint_failover_policy` block as defined below.
  final pulumi.Input<FailoverGroupReadWriteEndpointFailoverPolicy>? readWriteEndpointFailoverPolicy;
  /// Whether failover is enabled for the readonly endpoint. Defaults to `false`.
  final pulumi.Input<bool>? readonlyEndpointFailoverPolicyEnabled;
  /// The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FailoverGroupState].
  /// [databases] A set of database names to include in the failover group.
  /// [name] The name of the Failover Group. Changing this forces a new resource to be created.
  /// [partnerServers] A `partner_server` block as defined below.
  /// [readWriteEndpointFailoverPolicy] A `read_write_endpoint_failover_policy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Whether failover is enabled for the readonly endpoint. Defaults to `false`.
  /// [serverId] The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  FailoverGroupState({
    pulumi.Output<List<String>>? databases,
    pulumi.Output<String>? name,
    pulumi.Output<List<FailoverGroupPartnerServer>>? partnerServers,
    pulumi.Output<FailoverGroupReadWriteEndpointFailoverPolicy>? readWriteEndpointFailoverPolicy,
    pulumi.Output<bool>? readonlyEndpointFailoverPolicyEnabled,
    pulumi.Output<String>? serverId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databases = pulumi.Input.asOptionalInput<List<String>>(databases),
      name = pulumi.Input.asOptionalInput<String>(name),
      partnerServers = pulumi.Input.asOptionalInput<List<FailoverGroupPartnerServer>>(partnerServers),
      readWriteEndpointFailoverPolicy = pulumi.Input.asOptionalInput<FailoverGroupReadWriteEndpointFailoverPolicy>(readWriteEndpointFailoverPolicy),
      readonlyEndpointFailoverPolicyEnabled = pulumi.Input.asOptionalInput<bool>(readonlyEndpointFailoverPolicyEnabled),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'name': ?name,
      'partnerServers': ?pulumi.Input.mapOptionalInputValue<List<FailoverGroupPartnerServer>, List<Map<String, dynamic>>>(partnerServers, (value) => pulumi.Input.encodeList<FailoverGroupPartnerServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readWriteEndpointFailoverPolicy': ?pulumi.Input.mapOptionalInputValue<FailoverGroupReadWriteEndpointFailoverPolicy, Map<String, dynamic>>(readWriteEndpointFailoverPolicy, (value) => value.toMap()),
      'readonlyEndpointFailoverPolicyEnabled': ?readonlyEndpointFailoverPolicyEnabled,
      'serverId': ?serverId,
      'tags': ?tags,
    };
  }

  factory FailoverGroupState.fromMap(Map<String, dynamic> map) {
    return FailoverGroupState(
      databases: map['databases'] == null ? null : pulumi.Output.create<List<String>>((map['databases'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partnerServers: map['partnerServers'] == null ? null : pulumi.Output.create<List<FailoverGroupPartnerServer>>(pulumi.Input.decodeList<FailoverGroupPartnerServer>(map['partnerServers'], (value) => FailoverGroupPartnerServer.fromMap((value as Map).cast<String, dynamic>()))),
      readWriteEndpointFailoverPolicy: map['readWriteEndpointFailoverPolicy'] == null ? null : pulumi.Output.create<FailoverGroupReadWriteEndpointFailoverPolicy>(FailoverGroupReadWriteEndpointFailoverPolicy.fromMap((map['readWriteEndpointFailoverPolicy'] as Map).cast<String, dynamic>())),
      readonlyEndpointFailoverPolicyEnabled: map['readonlyEndpointFailoverPolicyEnabled'] == null ? null : pulumi.Output.create<bool>(map['readonlyEndpointFailoverPolicyEnabled'] as bool),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

