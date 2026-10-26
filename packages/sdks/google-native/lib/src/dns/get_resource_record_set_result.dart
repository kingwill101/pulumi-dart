// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_response.dart';

/// Result data returned by getResourceRecordSet.
class GetResourceRecordSetResult {
  final String? kind;
  /// For example, www.example.com.
  final String? name;
  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final RRSetRoutingPolicyResponse? routingPolicy;
  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final List<String>? rrdatas;
  /// As defined in RFC 4034 (section 3.2).
  final List<String>? signatureRrdatas;
  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final int? ttl;
  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final String? type;

  /// Creates a new [GetResourceRecordSetResult].
  /// [kind] Optional.
  /// [name] For example, www.example.com.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  const GetResourceRecordSetResult({
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
      'routingPolicy': ?routingPolicy?.toMap(),
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory GetResourceRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetResourceRecordSetResult(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingPolicy: (() { final guardedValue = map['routingPolicy']; if (guardedValue == null) return null; return RRSetRoutingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rrdatas: (() { final guardedValue = map['rrdatas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      signatureRrdatas: (() { final guardedValue = map['signatureRrdatas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
