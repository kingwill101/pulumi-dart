// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_filter_direction_compute_beta.dart';

class PacketMirroringFilterComputeBeta {
  /// IP CIDR ranges that apply as filter on the source (ingress) or destination (egress) IP in the IP header. Only IPv4 is supported. If no ranges are specified, all traffic that matches the specified IPProtocols is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  final pulumi.Input<List<String>>? cidrRanges;
  /// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
  final pulumi.Input<PacketMirroringFilterDirectionComputeBeta>? direction;
  /// Protocols that apply as filter on mirrored traffic. If no protocols are specified, all traffic that matches the specified CIDR ranges is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  final pulumi.Input<List<String>>? ipProtocols;

  /// Creates a new [PacketMirroringFilterComputeBeta].
  /// [cidrRanges] IP CIDR ranges that apply as filter on the source (ingress) or destination (egress) IP in the IP header. Only IPv4 is supported. If no ranges are specified, all traffic that matches the specified IPProtocols is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  /// [direction] Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
  /// [ipProtocols] Protocols that apply as filter on mirrored traffic. If no protocols are specified, all traffic that matches the specified CIDR ranges is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  const PacketMirroringFilterComputeBeta({
    this.cidrRanges,
    this.direction,
    this.ipProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRanges': ?cidrRanges,
      'direction': ?pulumi.Input.mapOptionalInputValue<PacketMirroringFilterDirectionComputeBeta, String>(direction, (value) => value.wireValue),
      'ipProtocols': ?ipProtocols,
    };
  }

  factory PacketMirroringFilterComputeBeta.fromMap(Map<String, dynamic> map) {
    return PacketMirroringFilterComputeBeta(
      cidrRanges: (() { final guardedValue = map['cidrRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringFilterDirectionComputeBeta.fromValue(guardedValue as String)); })(),
      ipProtocols: (() { final guardedValue = map['ipProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

