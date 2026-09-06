// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_pool.dart';

class L2ServiceLoadBalancerConfiguration {
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final pulumi.Input<List<IpAddressPool>?>? ipAddressPools;

  /// Creates a new [L2ServiceLoadBalancerConfiguration].
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  const L2ServiceLoadBalancerConfiguration({
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressPools': ?pulumi.Input.mapOptionalInputValue<List<IpAddressPool>, List<Map<String, dynamic>>>(ipAddressPools, (value) => pulumi.Input.encodeList<IpAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory L2ServiceLoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return L2ServiceLoadBalancerConfiguration(
      ipAddressPools: (() { final guardedValue = map['ipAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddressPool>(guardedValue, (value) => IpAddressPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
