// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_pool.dart';

class L2ServiceLoadBalancerConfiguration {
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final List<IpAddressPool>? ipAddressPools;

  /// Creates a new [L2ServiceLoadBalancerConfiguration].
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  L2ServiceLoadBalancerConfiguration({
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressPools': ?ipAddressPools == null ? null : pulumi.Input.encodeList<IpAddressPool, Map<String, dynamic>>(ipAddressPools!, (value) => value.toMap()),
    };
  }

  factory L2ServiceLoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return L2ServiceLoadBalancerConfiguration(
      ipAddressPools: map['ipAddressPools'] == null ? null : pulumi.Input.decodeList<IpAddressPool>(map['ipAddressPools'], (value) => IpAddressPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

