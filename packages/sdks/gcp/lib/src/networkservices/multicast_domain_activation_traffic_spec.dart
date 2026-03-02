// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastDomainActivationTrafficSpec {
  /// Aggregated egress Packet-Per-Second for all multicast groups in the domain
  /// in this zone.
  final pulumi.Input<String>? aggrEgressPps;
  /// Aggregated ingress Packet-Per-Second for all multicast groups in the domain
  /// in this zone. Default to (aggregated_egress_pps /
  /// max_per_group_subscribers) * 2.
  final pulumi.Input<String>? aggrIngressPps;
  /// Average packet size (Default to 512 bytes).
  final pulumi.Input<int>? avgPacketSize;
  /// Maximum ingress Packet-Per-Second for a single multicast group in this
  /// zone. Default to aggregated_ingress_pps / 2.
  final pulumi.Input<String>? maxPerGroupIngressPps;
  /// Maximum number of subscribers for a single multicast group in this zone.
  /// Default to max(50, aggregated_egress_pps / aggregated_ingress_pps).
  final pulumi.Input<String>? maxPerGroupSubscribers;

  /// Creates a new [MulticastDomainActivationTrafficSpec].
  /// [aggrEgressPps] Aggregated egress Packet-Per-Second for all multicast groups in the domain
  /// [aggrIngressPps] Aggregated ingress Packet-Per-Second for all multicast groups in the domain
  /// [avgPacketSize] Average packet size (Default to 512 bytes).
  /// [maxPerGroupIngressPps] Maximum ingress Packet-Per-Second for a single multicast group in this
  /// [maxPerGroupSubscribers] Maximum number of subscribers for a single multicast group in this zone.
  MulticastDomainActivationTrafficSpec({
    this.aggrEgressPps,
    this.aggrIngressPps,
    this.avgPacketSize,
    this.maxPerGroupIngressPps,
    this.maxPerGroupSubscribers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggrEgressPps': ?aggrEgressPps,
      'aggrIngressPps': ?aggrIngressPps,
      'avgPacketSize': ?avgPacketSize,
      'maxPerGroupIngressPps': ?maxPerGroupIngressPps,
      'maxPerGroupSubscribers': ?maxPerGroupSubscribers,
    };
  }

  factory MulticastDomainActivationTrafficSpec.fromMap(Map<String, dynamic> map) {
    return MulticastDomainActivationTrafficSpec(
      aggrEgressPps: map['aggrEgressPps'] == null ? null : (map['aggrEgressPps']! as String).input(),
      aggrIngressPps: map['aggrIngressPps'] == null ? null : (map['aggrIngressPps']! as String).input(),
      avgPacketSize: map['avgPacketSize'] == null ? null : (map['avgPacketSize']! as int).input(),
      maxPerGroupIngressPps: map['maxPerGroupIngressPps'] == null ? null : (map['maxPerGroupIngressPps']! as String).input(),
      maxPerGroupSubscribers: map['maxPerGroupSubscribers'] == null ? null : (map['maxPerGroupSubscribers']! as String).input(),
    );
  }
}

