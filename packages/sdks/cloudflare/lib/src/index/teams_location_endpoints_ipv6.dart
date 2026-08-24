// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_location_endpoints_ipv6_network.dart';

class TeamsLocationEndpointsIpv6 {
  /// Indicate whether the IPV6 endpoint is enabled for this location.
  final pulumi.Input<bool?>? enabled;
  /// Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<TeamsLocationEndpointsIpv6Network>?>? networks;

  /// Creates a new [TeamsLocationEndpointsIpv6].
  /// [enabled] Indicate whether the IPV6 endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const TeamsLocationEndpointsIpv6({
    this.enabled,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<TeamsLocationEndpointsIpv6Network>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<TeamsLocationEndpointsIpv6Network, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TeamsLocationEndpointsIpv6.fromMap(Map<String, dynamic> map) {
    return TeamsLocationEndpointsIpv6(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsLocationEndpointsIpv6Network>(guardedValue, (value) => TeamsLocationEndpointsIpv6Network.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
