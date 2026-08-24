// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDnsLocationEndpointsIpv4 {
  /// Indicate whether the IPv4 endpoint is enabled for this location.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustDnsLocationEndpointsIpv4].
  /// [enabled] Indicate whether the IPv4 endpoint is enabled for this location.
  const ZeroTrustDnsLocationEndpointsIpv4({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustDnsLocationEndpointsIpv4.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsIpv4(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
