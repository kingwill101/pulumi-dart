// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dns_location_endpoints_doh_network.dart';

class ZeroTrustDnsLocationEndpointsDoh {
  /// Indicate whether the DOH endpoint is enabled for this location.
  final pulumi.Input<bool?>? enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<ZeroTrustDnsLocationEndpointsDohNetwork>?>? networks;
  /// Specify whether the DOH endpoint requires user identity authentication.
  final pulumi.Input<bool?>? requireToken;

  /// Creates a new [ZeroTrustDnsLocationEndpointsDoh].
  /// [enabled] Indicate whether the DOH endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  /// [requireToken] Specify whether the DOH endpoint requires user identity authentication.
  const ZeroTrustDnsLocationEndpointsDoh({
    this.enabled,
    this.networks,
    this.requireToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDnsLocationEndpointsDohNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ZeroTrustDnsLocationEndpointsDohNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireToken': ?requireToken,
    };
  }

  factory ZeroTrustDnsLocationEndpointsDoh.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsDoh(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDnsLocationEndpointsDohNetwork>(guardedValue, (value) => ZeroTrustDnsLocationEndpointsDohNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requireToken: (() { final guardedValue = map['requireToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
