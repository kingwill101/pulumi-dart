// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_outbound_ips.dart';

/// LoadBalancerProfile represents the profile of the cluster public load balancer.
class LoadBalancerProfile {
  /// The desired managed outbound IPs for the cluster public load balancer.
  final pulumi.Input<ManagedOutboundIPs>? managedOutboundIps;

  /// Creates a new [LoadBalancerProfile].
  /// [managedOutboundIps] The desired managed outbound IPs for the cluster public load balancer.
  LoadBalancerProfile({this.managedOutboundIps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedOutboundIps':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedOutboundIPs,
            Map<String, dynamic>
          >(managedOutboundIps, (value) => value.toMap()),
    };
  }

  factory LoadBalancerProfile.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProfile(
      managedOutboundIps: (() {
        final guardedValue = map['managedOutboundIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedOutboundIPs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
