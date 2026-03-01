// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy.dart';

/// A unit of data that is returned by the DNS servers.
class ResourceRecordSet {
  final String? kind;
  /// For example, www.example.com.
  final String? name;
  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final RRSetRoutingPolicy? routingPolicy;
  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final List<String>? rrdatas;
  /// As defined in RFC 4034 (section 3.2).
  final List<String>? signatureRrdatas;
  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final int? ttl;
  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final String? type;

  /// Creates a new [ResourceRecordSet].
  /// [kind] Optional.
  /// [name] For example, www.example.com.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  ResourceRecordSet({
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
      'routingPolicy': ?routingPolicy == null ? null : routingPolicy!.toMap(),
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory ResourceRecordSet.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSet(
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      routingPolicy: map['routingPolicy'] == null ? null : RRSetRoutingPolicy.fromMap((map['routingPolicy'] as Map).cast<String, dynamic>()),
      rrdatas: map['rrdatas'] == null ? null : (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : (map['signatureRrdatas'] as List).cast<String>(),
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

