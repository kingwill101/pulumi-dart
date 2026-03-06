// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringFilter {
  /// IP CIDR ranges that apply as a filter on the source (ingress) or
  /// destination (egress) IP in the IP header. Only IPv4 is supported.
  final pulumi.Input<List<String>>? cidrRanges;
  /// Direction of traffic to mirror.
  /// Default value is `BOTH`.
  /// Possible values are: `INGRESS`, `EGRESS`, `BOTH`.
  final pulumi.Input<String>? direction;
  /// Possible IP protocols including tcp, udp, icmp and esp
  final pulumi.Input<List<String>>? ipProtocols;

  /// Creates a new [PacketMirroringFilter].
  /// [cidrRanges] IP CIDR ranges that apply as a filter on the source (ingress) or
  /// [direction] Direction of traffic to mirror.
  /// [ipProtocols] Possible IP protocols including tcp, udp, icmp and esp
  const PacketMirroringFilter({
    this.cidrRanges,
    this.direction,
    this.ipProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRanges': ?cidrRanges,
      'direction': ?direction,
      'ipProtocols': ?ipProtocols,
    };
  }

  factory PacketMirroringFilter.fromMap(Map<String, dynamic> map) {
    return PacketMirroringFilter(
      cidrRanges: (() { final guardedValue = map['cidrRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocols: (() { final guardedValue = map['ipProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

