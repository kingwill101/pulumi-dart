// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an IP pool used by the load balancer.
class BareMetalLoadBalancerAddressPoolResponse {
  /// The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).
  final pulumi.Input<List<String>> addresses;
  /// If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses.
  final pulumi.Input<bool> avoidBuggyIps;
  /// If true, prevent IP addresses from being automatically assigned.
  final pulumi.Input<bool> manualAssign;
  /// The name of the address pool.
  final pulumi.Input<String> pool;

  /// Creates a new [BareMetalLoadBalancerAddressPoolResponse].
  /// [addresses] The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).
  /// [avoidBuggyIps] If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses.
  /// [manualAssign] If true, prevent IP addresses from being automatically assigned.
  /// [pool] The name of the address pool.
  BareMetalLoadBalancerAddressPoolResponse({
    required this.addresses,
    required this.avoidBuggyIps,
    required this.manualAssign,
    required this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'avoidBuggyIps': avoidBuggyIps,
      'manualAssign': manualAssign,
      'pool': pool,
    };
  }

  factory BareMetalLoadBalancerAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerAddressPoolResponse(
      addresses: ((map['addresses'] as List).cast<String>()).input(),
      avoidBuggyIps: (map['avoidBuggyIps'] as bool).input(),
      manualAssign: (map['manualAssign'] as bool).input(),
      pool: (map['pool'] as String).input(),
    );
  }
}

