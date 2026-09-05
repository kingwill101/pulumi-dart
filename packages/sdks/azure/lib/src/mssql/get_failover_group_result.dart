// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_failover_group_partner_server.dart';
import 'get_failover_group_read_write_endpoint_failover_policy.dart';

/// Result data returned by getFailoverGroup.
class GetFailoverGroupResult {
  /// A set of database names in the Failover Group.
  final List<String>? databases;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// A `partnerServer` block as defined below.
  final List<GetFailoverGroupPartnerServer>? partnerServers;
  /// A `readWriteEndpointFailoverPolicy` block as defined below.
  final List<GetFailoverGroupReadWriteEndpointFailoverPolicy>? readWriteEndpointFailoverPolicies;
  /// Whether failover is enabled for the readonly endpoint.
  final bool? readonlyEndpointFailoverPolicyEnabled;
  final String? serverId;
  /// A mapping of tags which are assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetFailoverGroupResult].
  /// [databases] A set of database names in the Failover Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [partnerServers] A `partnerServer` block as defined below.
  /// [readWriteEndpointFailoverPolicies] A `readWriteEndpointFailoverPolicy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Whether failover is enabled for the readonly endpoint.
  /// [serverId] Optional.
  /// [tags] A mapping of tags which are assigned to the resource.
  const GetFailoverGroupResult({
    this.databases,
    this.id,
    this.name,
    this.partnerServers,
    this.readWriteEndpointFailoverPolicies,
    this.readonlyEndpointFailoverPolicyEnabled,
    this.serverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'id': ?id,
      'name': ?name,
      'partnerServers': ?(() { final guardedValue = partnerServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFailoverGroupPartnerServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'readWriteEndpointFailoverPolicies': ?(() { final guardedValue = readWriteEndpointFailoverPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFailoverGroupReadWriteEndpointFailoverPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'readonlyEndpointFailoverPolicyEnabled': ?readonlyEndpointFailoverPolicyEnabled,
      'serverId': ?serverId,
      'tags': ?tags,
    };
  }

  factory GetFailoverGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupResult(
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerServers: (() { final guardedValue = map['partnerServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFailoverGroupPartnerServer>(guardedValue, (value) => GetFailoverGroupPartnerServer.fromMap((value as Map).cast<String, dynamic>())); })(),
      readWriteEndpointFailoverPolicies: (() { final guardedValue = map['readWriteEndpointFailoverPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFailoverGroupReadWriteEndpointFailoverPolicy>(guardedValue, (value) => GetFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      readonlyEndpointFailoverPolicyEnabled: (() { final guardedValue = map['readonlyEndpointFailoverPolicyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
