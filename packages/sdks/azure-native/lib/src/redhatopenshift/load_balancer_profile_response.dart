// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'effective_outbound_ipresponse.dart';
import 'managed_outbound_ips_response.dart';

/// LoadBalancerProfile represents the profile of the cluster public load balancer.
class LoadBalancerProfileResponse {
  /// The list of effective outbound IP addresses of the public load balancer.
  final pulumi.Input<List<EffectiveOutboundIPResponse>> effectiveOutboundIps;
  /// The desired managed outbound IPs for the cluster public load balancer.
  final pulumi.Input<ManagedOutboundIPsResponse?>? managedOutboundIps;

  /// Creates a new [LoadBalancerProfileResponse].
  /// [effectiveOutboundIps] The list of effective outbound IP addresses of the public load balancer.
  /// [managedOutboundIps] The desired managed outbound IPs for the cluster public load balancer.
  const LoadBalancerProfileResponse({
    required this.effectiveOutboundIps,
    this.managedOutboundIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveOutboundIps': pulumi.Input.mapInputValue<List<EffectiveOutboundIPResponse>, List<Map<String, dynamic>>>(effectiveOutboundIps, (value) => pulumi.Input.encodeList<EffectiveOutboundIPResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedOutboundIps': ?pulumi.Input.mapOptionalInputValue<ManagedOutboundIPsResponse, Map<String, dynamic>>(managedOutboundIps, (value) => value.toMap()),
    };
  }

  factory LoadBalancerProfileResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProfileResponse(
      effectiveOutboundIps: pulumi.Input.fromValue(pulumi.Input.decodeList<EffectiveOutboundIPResponse>(map['effectiveOutboundIps']!, (value) => EffectiveOutboundIPResponse.fromMap((value as Map).cast<String, dynamic>()))),
      managedOutboundIps: (() { final guardedValue = map['managedOutboundIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedOutboundIPsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
