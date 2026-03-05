// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_response.dart';

/// A unit of data that is returned by the DNS servers.
class ResourceRecordSetResponse {
  final pulumi.Input<String> kind;
  /// For example, www.example.com.
  final pulumi.Input<String> name;
  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final pulumi.Input<RRSetRoutingPolicyResponse> routingPolicy;
  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final pulumi.Input<List<String>> rrdatas;
  /// As defined in RFC 4034 (section 3.2).
  final pulumi.Input<List<String>> signatureRrdatas;
  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final pulumi.Input<int> ttl;
  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceRecordSetResponse].
  /// [kind] Required.
  /// [name] For example, www.example.com.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  ResourceRecordSetResponse({
    required this.kind,
    required this.name,
    required this.routingPolicy,
    required this.rrdatas,
    required this.signatureRrdatas,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
      'routingPolicy': pulumi.Input.mapInputValue<RRSetRoutingPolicyResponse, Map<String, dynamic>>(routingPolicy, (value) => value.toMap()),
      'rrdatas': rrdatas,
      'signatureRrdatas': signatureRrdatas,
      'ttl': ttl,
      'type': type,
    };
  }

  factory ResourceRecordSetResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      routingPolicy: pulumi.Input.fromValue(RRSetRoutingPolicyResponse.fromMap((map['routingPolicy']! as Map).cast<String, dynamic>())),
      rrdatas: pulumi.Input.fromValue((map['rrdatas'] as List).cast<String>()),
      signatureRrdatas: pulumi.Input.fromValue((map['signatureRrdatas'] as List).cast<String>()),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

