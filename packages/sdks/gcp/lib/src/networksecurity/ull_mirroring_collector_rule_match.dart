// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UllMirroringCollectorRuleMatch {
  /// Direction of traffic to match. When unset, matches any direction.
  /// Possible values:
  /// INGRESS: Traffic inbound to the capture point.
  /// EGRESS: Traffic outbound from the capture point.
  final pulumi.Input<String?>? direction;
  /// Destination IP ranges to match. When unset, matches any destination IP
  /// range.
  final pulumi.Input<List<String>?>? dstIpRanges;
  /// IP protocols to match. When unset, matches any IP protocol.
  /// Examples: "tcp", "udp", "icmp". If unset, matches any IP protocol.
  final pulumi.Input<List<String>?>? ipProtocols;
  /// Source IP ranges to match. When unset, matches any source IP range.
  final pulumi.Input<List<String>?>? srcIpRanges;

  /// Creates a new [UllMirroringCollectorRuleMatch].
  /// [direction] Direction of traffic to match. When unset, matches any direction.
  /// [dstIpRanges] Destination IP ranges to match. When unset, matches any destination IP
  /// [ipProtocols] IP protocols to match. When unset, matches any IP protocol.
  /// [srcIpRanges] Source IP ranges to match. When unset, matches any source IP range.
  const UllMirroringCollectorRuleMatch({
    this.direction,
    this.dstIpRanges,
    this.ipProtocols,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'dstIpRanges': ?dstIpRanges,
      'ipProtocols': ?ipProtocols,
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory UllMirroringCollectorRuleMatch.fromMap(Map<String, dynamic> map) {
    return UllMirroringCollectorRuleMatch(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dstIpRanges: (() { final guardedValue = map['dstIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipProtocols: (() { final guardedValue = map['ipProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
