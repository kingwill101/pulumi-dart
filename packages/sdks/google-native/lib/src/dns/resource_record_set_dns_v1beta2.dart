// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_dns_v1beta2.dart';

/// A unit of data that is returned by the DNS servers.
class ResourceRecordSetDnsV1beta2 {
  final pulumi.Input<String>? kind;
  /// For example, www.example.com.
  final pulumi.Input<String>? name;
  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final pulumi.Input<RRSetRoutingPolicyDnsV1beta2>? routingPolicy;
  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final pulumi.Input<List<String>>? rrdatas;
  /// As defined in RFC 4034 (section 3.2).
  final pulumi.Input<List<String>>? signatureRrdatas;
  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final pulumi.Input<int>? ttl;
  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceRecordSetDnsV1beta2].
  /// [kind] Optional.
  /// [name] For example, www.example.com.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  ResourceRecordSetDnsV1beta2({
    this.kind,
    this.name,
    this.routingPolicy,
    this.rrdatas,
    this.signatureRrdatas,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': ?name,
      'routingPolicy': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyDnsV1beta2, Map<String, dynamic>>(routingPolicy, (value) => value.toMap()),
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory ResourceRecordSetDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetDnsV1beta2(
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      routingPolicy: map['routingPolicy'] == null ? null : (RRSetRoutingPolicyDnsV1beta2.fromMap((map['routingPolicy'] as Map).cast<String, dynamic>())).input(),
      rrdatas: map['rrdatas'] == null ? null : ((map['rrdatas'] as List).cast<String>()).input(),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : ((map['signatureRrdatas'] as List).cast<String>()).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

