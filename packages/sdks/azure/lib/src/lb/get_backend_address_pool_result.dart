// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_address_pool_backend_address.dart';
import 'get_backend_address_pool_backend_ip_configuration.dart';

/// Result data returned by getBackendAddressPool.
class GetBackendAddressPoolResult {
  /// A list of `backendAddress` block as defined below.
  final List<GetBackendAddressPoolBackendAddress> backendAddresses;
  /// A list of references to IP addresses defined in network interfaces.
  final List<GetBackendAddressPoolBackendIpConfiguration> backendIpConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  final List<String> inboundNatRules;
  /// A list of the Load Balancing Rules associated with this Backend Address Pool.
  final List<String> loadBalancingRules;
  final String loadbalancerId;
  /// The name of the Backend Address.
  final String name;
  /// A list of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  final List<String> outboundRules;

  /// Creates a new [GetBackendAddressPoolResult].
  /// [backendAddresses] A list of `backendAddress` block as defined below.
  /// [backendIpConfigurations] A list of references to IP addresses defined in network interfaces.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundNatRules] A list of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  /// [loadBalancingRules] A list of the Load Balancing Rules associated with this Backend Address Pool.
  /// [loadbalancerId] Required.
  /// [name] The name of the Backend Address.
  /// [outboundRules] A list of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  const GetBackendAddressPoolResult({
    required this.backendAddresses,
    required this.backendIpConfigurations,
    required this.id,
    required this.inboundNatRules,
    required this.loadBalancingRules,
    required this.loadbalancerId,
    required this.name,
    required this.outboundRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddresses': pulumi.Input.encodeList<GetBackendAddressPoolBackendAddress, Map<String, dynamic>>(backendAddresses, (value) => value.toMap()),
      'backendIpConfigurations': pulumi.Input.encodeList<GetBackendAddressPoolBackendIpConfiguration, Map<String, dynamic>>(backendIpConfigurations, (value) => value.toMap()),
      'id': id,
      'inboundNatRules': inboundNatRules,
      'loadBalancingRules': loadBalancingRules,
      'loadbalancerId': loadbalancerId,
      'name': name,
      'outboundRules': outboundRules,
    };
  }

  factory GetBackendAddressPoolResult.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolResult(
      backendAddresses: pulumi.Input.decodeList<GetBackendAddressPoolBackendAddress>(map['backendAddresses']!, (value) => GetBackendAddressPoolBackendAddress.fromMap((value as Map).cast<String, dynamic>())),
      backendIpConfigurations: pulumi.Input.decodeList<GetBackendAddressPoolBackendIpConfiguration>(map['backendIpConfigurations']!, (value) => GetBackendAddressPoolBackendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      inboundNatRules: (map['inboundNatRules'] as List).cast<String>(),
      loadBalancingRules: (map['loadBalancingRules'] as List).cast<String>(),
      loadbalancerId: map['loadbalancerId'] as String,
      name: map['name'] as String,
      outboundRules: (map['outboundRules'] as List).cast<String>(),
    );
  }
}
