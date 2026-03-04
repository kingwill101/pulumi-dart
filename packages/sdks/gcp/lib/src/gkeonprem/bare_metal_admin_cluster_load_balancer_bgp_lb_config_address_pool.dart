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

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool(
      addresses: (() {
        final guardedValue = map['addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
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
      pool: (() {
        final guardedValue = map['pool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
