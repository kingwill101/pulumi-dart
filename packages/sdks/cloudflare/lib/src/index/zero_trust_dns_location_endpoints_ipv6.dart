// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dns_location_endpoints_ipv6_network.dart';

class ZeroTrustDnsLocationEndpointsIpv6 {
  /// Indicate whether the IPV6 endpoint is enabled for this location.
  final pulumi.Input<bool?>? enabled;
  /// Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<ZeroTrustDnsLocationEndpointsIpv6Network>?>? networks;

  /// Creates a new [ZeroTrustDnsLocationEndpointsIpv6].
  /// [enabled] Indicate whether the IPV6 endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const ZeroTrustDnsLocationEndpointsIpv6({
    this.enabled,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDnsLocationEndpointsIpv6Network>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ZeroTrustDnsLocationEndpointsIpv6Network, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDnsLocationEndpointsIpv6.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsIpv6(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDnsLocationEndpointsIpv6Network>(guardedValue, (value) => ZeroTrustDnsLocationEndpointsIpv6Network.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
