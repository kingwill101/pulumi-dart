// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dns_location_endpoints_dot_network.dart';

class ZeroTrustDnsLocationEndpointsDot {
  /// Indicate whether the DOT endpoint is enabled for this location.
  final pulumi.Input<bool?>? enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<ZeroTrustDnsLocationEndpointsDotNetwork>?>? networks;

  /// Creates a new [ZeroTrustDnsLocationEndpointsDot].
  /// [enabled] Indicate whether the DOT endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const ZeroTrustDnsLocationEndpointsDot({
    this.enabled,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDnsLocationEndpointsDotNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ZeroTrustDnsLocationEndpointsDotNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDnsLocationEndpointsDot.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsDot(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDnsLocationEndpointsDotNetwork>(guardedValue, (value) => ZeroTrustDnsLocationEndpointsDotNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
