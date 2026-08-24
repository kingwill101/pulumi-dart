// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpectrumApplicationsResultEdgeIps {
  /// The IP versions supported for inbound connections on Spectrum anycast IPs.
  /// Available values: "all", "ipv4", "ipv6".
  final pulumi.Input<String> connectivity;
  /// The array of customer owned IPs we broadcast via anycast for this hostname and application.
  final pulumi.Input<List<String>> ips;
  /// The type of edge IP configuration specified. Dynamically allocated edge IPs use Spectrum anycast IPs in accordance with the connectivity you specify. Only valid with CNAME DNS names.
  /// Available values: "dynamic", "static".
  final pulumi.Input<String> type;

  /// Creates a new [GetSpectrumApplicationsResultEdgeIps].
  /// [connectivity] The IP versions supported for inbound connections on Spectrum anycast IPs.
  /// [ips] The array of customer owned IPs we broadcast via anycast for this hostname and application.
  /// [type] The type of edge IP configuration specified. Dynamically allocated edge IPs use Spectrum anycast IPs in accordance with the connectivity you specify. Only valid with CNAME DNS names.
  const GetSpectrumApplicationsResultEdgeIps({
    required this.connectivity,
    required this.ips,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivity': connectivity,
      'ips': ips,
      'type': type,
    };
  }

  factory GetSpectrumApplicationsResultEdgeIps.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationsResultEdgeIps(
      connectivity: pulumi.Input.fromValue(map['connectivity'] as String),
      ips: pulumi.Input.fromValue((map['ips'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
