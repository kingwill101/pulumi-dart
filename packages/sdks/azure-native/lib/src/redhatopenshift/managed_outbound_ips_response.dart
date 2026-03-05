// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedOutboundIPs represents the desired managed outbound IPs for the cluster public load balancer.
class ManagedOutboundIPsResponse {
  /// Count represents the desired number of IPv4 outbound IPs created and managed by Azure for the cluster public load balancer.  Allowed values are in the range of 1 - 20.  The default value is 1.
  final pulumi.Input<int>? count;

  /// Creates a new [ManagedOutboundIPsResponse].
  /// [count] Count represents the desired number of IPv4 outbound IPs created and managed by Azure for the cluster public load balancer.  Allowed values are in the range of 1 - 20.  The default value is 1.
  ManagedOutboundIPsResponse({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ManagedOutboundIPsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOutboundIPsResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

