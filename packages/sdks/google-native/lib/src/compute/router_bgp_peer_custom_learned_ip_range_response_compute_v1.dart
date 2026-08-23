// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterBgpPeerCustomLearnedIpRangeResponseComputeV1 {
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  final pulumi.Input<String> range;

  /// Creates a new [RouterBgpPeerCustomLearnedIpRangeResponseComputeV1].
  /// [range] The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  const RouterBgpPeerCustomLearnedIpRangeResponseComputeV1({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory RouterBgpPeerCustomLearnedIpRangeResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerCustomLearnedIpRangeResponseComputeV1(
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}
