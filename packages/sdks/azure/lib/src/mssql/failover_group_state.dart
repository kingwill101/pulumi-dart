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
  /// A `partnerServer` block as defined below.
  final pulumi.Input<List<FailoverGroupPartnerServer>>? partnerServers;
  /// A `readWriteEndpointFailoverPolicy` block as defined below.
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
  /// [partnerServers] A `partnerServer` block as defined below.
  /// [readWriteEndpointFailoverPolicy] A `readWriteEndpointFailoverPolicy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Whether failover is enabled for the readonly endpoint. Defaults to `false`.
  /// [serverId] The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const FailoverGroupState({
    this.databases,
    this.name,
    this.partnerServers,
    this.readWriteEndpointFailoverPolicy,
    this.readonlyEndpointFailoverPolicyEnabled,
    this.serverId,
    this.tags,
  });

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
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerServers: (() { final guardedValue = map['partnerServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FailoverGroupPartnerServer>(guardedValue, (value) => FailoverGroupPartnerServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readWriteEndpointFailoverPolicy: (() { final guardedValue = map['readWriteEndpointFailoverPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FailoverGroupReadWriteEndpointFailoverPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readonlyEndpointFailoverPolicyEnabled: (() { final guardedValue = map['readonlyEndpointFailoverPolicyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
