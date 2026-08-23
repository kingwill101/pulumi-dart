// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_failover_group_partner_server.dart';
import 'get_failover_group_read_write_endpoint_failover_policy.dart';

/// Result data returned by getFailoverGroup.
class GetFailoverGroupResult {
  /// A set of database names in the Failover Group.
  final List<String> databases;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// A `partnerServer` block as defined below.
  final List<GetFailoverGroupPartnerServer> partnerServers;
  /// A `readWriteEndpointFailoverPolicy` block as defined below.
  final List<GetFailoverGroupReadWriteEndpointFailoverPolicy> readWriteEndpointFailoverPolicies;
  /// Whether failover is enabled for the readonly endpoint.
  final bool readonlyEndpointFailoverPolicyEnabled;
  final String serverId;
  /// A mapping of tags which are assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetFailoverGroupResult].
  /// [databases] A set of database names in the Failover Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [partnerServers] A `partnerServer` block as defined below.
  /// [readWriteEndpointFailoverPolicies] A `readWriteEndpointFailoverPolicy` block as defined below.
  /// [readonlyEndpointFailoverPolicyEnabled] Whether failover is enabled for the readonly endpoint.
  /// [serverId] Required.
  /// [tags] A mapping of tags which are assigned to the resource.
  const GetFailoverGroupResult({
    required this.databases,
    required this.id,
    required this.name,
    required this.partnerServers,
    required this.readWriteEndpointFailoverPolicies,
    required this.readonlyEndpointFailoverPolicyEnabled,
    required this.serverId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'id': id,
      'name': name,
      'partnerServers': pulumi.Input.encodeList<GetFailoverGroupPartnerServer, Map<String, dynamic>>(partnerServers, (value) => value.toMap()),
      'readWriteEndpointFailoverPolicies': pulumi.Input.encodeList<GetFailoverGroupReadWriteEndpointFailoverPolicy, Map<String, dynamic>>(readWriteEndpointFailoverPolicies, (value) => value.toMap()),
      'readonlyEndpointFailoverPolicyEnabled': readonlyEndpointFailoverPolicyEnabled,
      'serverId': serverId,
      'tags': tags,
    };
  }

  factory GetFailoverGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupResult(
      databases: (map['databases'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      partnerServers: pulumi.Input.decodeList<GetFailoverGroupPartnerServer>(map['partnerServers']!, (value) => GetFailoverGroupPartnerServer.fromMap((value as Map).cast<String, dynamic>())),
      readWriteEndpointFailoverPolicies: pulumi.Input.decodeList<GetFailoverGroupReadWriteEndpointFailoverPolicy>(map['readWriteEndpointFailoverPolicies']!, (value) => GetFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((value as Map).cast<String, dynamic>())),
      readonlyEndpointFailoverPolicyEnabled: map['readonlyEndpointFailoverPolicyEnabled'] as bool,
      serverId: map['serverId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
