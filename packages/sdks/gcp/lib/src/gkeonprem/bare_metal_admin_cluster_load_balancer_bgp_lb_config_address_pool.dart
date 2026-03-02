// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool {
  /// The addresses that are part of this pool.
  final pulumi.Input<List<String>>? addresses;
  /// This avoids buggy consumer devices mistakenly
  /// dropping IPv4 traffic for those special IP addresses.
  final pulumi.Input<bool>? avoidBuggyIps;
  /// If true, prevent IP addresses from being automatically assigned.
  final pulumi.Input<bool>? manualAssign;
  /// (Optional)
  final pulumi.Input<String>? pool;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool].
  /// [addresses] The addresses that are part of this pool.
  /// [avoidBuggyIps] This avoids buggy consumer devices mistakenly
  /// [manualAssign] If true, prevent IP addresses from being automatically assigned.
  /// [pool] (Optional)
  BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool({
    this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'avoidBuggyIps': ?avoidBuggyIps,
      'manualAssign': ?manualAssign,
      'pool': ?pool,
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool(
      addresses: map['addresses'] == null ? null : ((map['addresses']! as List).cast<String>()).input(),
      avoidBuggyIps: map['avoidBuggyIps'] == null ? null : (map['avoidBuggyIps']! as bool).input(),
      manualAssign: map['manualAssign'] == null ? null : (map['manualAssign']! as bool).input(),
      pool: map['pool'] == null ? null : (map['pool']! as String).input(),
    );
  }
}

