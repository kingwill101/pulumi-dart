// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an IP pool used by the load balancer.
class BareMetalLoadBalancerAddressPool {
  /// The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).
  final pulumi.Input<List<String>> addresses;

  /// If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses.
  final pulumi.Input<bool>? avoidBuggyIps;

  /// If true, prevent IP addresses from being automatically assigned.
  final pulumi.Input<bool>? manualAssign;

  /// The name of the address pool.
  final pulumi.Input<String> pool;

  /// Creates a new [BareMetalLoadBalancerAddressPool].
  /// [addresses] The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).
  /// [avoidBuggyIps] If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses.
  /// [manualAssign] If true, prevent IP addresses from being automatically assigned.
  /// [pool] The name of the address pool.
  BareMetalLoadBalancerAddressPool({
    required this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    required this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'avoidBuggyIps': ?avoidBuggyIps,
      'manualAssign': ?manualAssign,
      'pool': pool,
    };
  }

  factory BareMetalLoadBalancerAddressPool.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerAddressPool(
      addresses: pulumi.Input.fromValue(
        (map['addresses'] as List).cast<String>(),
      ),
      avoidBuggyIps: (() {
        final guardedValue = map['avoidBuggyIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      manualAssign: (() {
        final guardedValue = map['manualAssign'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pool: pulumi.Input.fromValue(map['pool'] as String),
    );
  }
}
