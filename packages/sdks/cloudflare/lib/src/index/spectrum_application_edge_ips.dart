// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpectrumApplicationEdgeIps {
  /// For `type: dynamic`: The IP versions supported for inbound connections on Spectrum anycast IPs.
  /// Available values: "all", "ipv4", "ipv6".
  final pulumi.Input<String?>? connectivity;
  /// For `type: static`: The array of customer owned IPs we broadcast via anycast for this hostname and application.
  final pulumi.Input<List<String>?>? ips;
  /// For `type: dynamic`: The type of edge IP configuration specified. Dynamically allocated edge IPs use Spectrum anycast IPs in accordance with the connectivity you specify. Only valid with CNAME DNS names.
  final pulumi.Input<String?>? type;

  /// Creates a new [SpectrumApplicationEdgeIps].
  /// [connectivity] For `type: dynamic`: The IP versions supported for inbound connections on Spectrum anycast IPs.
  /// [ips] For `type: static`: The array of customer owned IPs we broadcast via anycast for this hostname and application.
  /// [type] For `type: dynamic`: The type of edge IP configuration specified. Dynamically allocated edge IPs use Spectrum anycast IPs in accordance with the connectivity you specify. Only valid with CNAME DNS names.
  const SpectrumApplicationEdgeIps({
    this.connectivity,
    this.ips,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivity': ?connectivity,
      'ips': ?ips,
      'type': ?type,
    };
  }

  factory SpectrumApplicationEdgeIps.fromMap(Map<String, dynamic> map) {
    return SpectrumApplicationEdgeIps(
      connectivity: (() { final guardedValue = map['connectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
