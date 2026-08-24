// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationEndpointsIpv4 {
  /// Indicate whether the IPv4 endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsIpv4].
  /// [enabled] Indicate whether the IPv4 endpoint is enabled for this location.
  const GetZeroTrustDnsLocationEndpointsIpv4({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustDnsLocationEndpointsIpv4.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsIpv4(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
