// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_pool_response.dart';

class L2ServiceLoadBalancerConfigurationResponse {
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final pulumi.Input<List<IpAddressPoolResponse>>? ipAddressPools;

  /// Creates a new [L2ServiceLoadBalancerConfigurationResponse].
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  L2ServiceLoadBalancerConfigurationResponse({
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressPools': ?pulumi.Input.mapOptionalInputValue<List<IpAddressPoolResponse>, List<Map<String, dynamic>>>(ipAddressPools, (value) => pulumi.Input.encodeList<IpAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory L2ServiceLoadBalancerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return L2ServiceLoadBalancerConfigurationResponse(
      ipAddressPools: (() { final guardedValue = map['ipAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddressPoolResponse>(guardedValue, (value) => IpAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

