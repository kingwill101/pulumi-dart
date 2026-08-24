// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationsResultEndpointsIpv4 {
  /// Indicate whether the IPv4 endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpointsIpv4].
  /// [enabled] Indicate whether the IPv4 endpoint is enabled for this location.
  const GetZeroTrustDnsLocationsResultEndpointsIpv4({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpointsIpv4.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpointsIpv4(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
