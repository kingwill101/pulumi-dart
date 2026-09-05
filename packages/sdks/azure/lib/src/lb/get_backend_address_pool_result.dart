// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_address_pool_backend_address.dart';
import 'get_backend_address_pool_backend_ip_configuration.dart';

/// Result data returned by getBackendAddressPool.
class GetBackendAddressPoolResult {
  /// A list of `backendAddress` block as defined below.
  final List<GetBackendAddressPoolBackendAddress>? backendAddresses;
  /// A list of references to IP addresses defined in network interfaces.
  final List<GetBackendAddressPoolBackendIpConfiguration>? backendIpConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  final List<String>? inboundNatRules;
  /// A list of the Load Balancing Rules associated with this Backend Address Pool.
  final List<String>? loadBalancingRules;
  final String? loadbalancerId;
  /// The name of the Backend Address.
  final String? name;
  /// A list of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  final List<String>? outboundRules;

  /// Creates a new [GetBackendAddressPoolResult].
  /// [backendAddresses] A list of `backendAddress` block as defined below.
  /// [backendIpConfigurations] A list of references to IP addresses defined in network interfaces.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundNatRules] A list of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  /// [loadBalancingRules] A list of the Load Balancing Rules associated with this Backend Address Pool.
  /// [loadbalancerId] Optional.
  /// [name] The name of the Backend Address.
  /// [outboundRules] A list of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  const GetBackendAddressPoolResult({
    this.backendAddresses,
    this.backendIpConfigurations,
    this.id,
    this.inboundNatRules,
    this.loadBalancingRules,
    this.loadbalancerId,
    this.name,
    this.outboundRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddresses': ?(() { final guardedValue = backendAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendAddressPoolBackendAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backendIpConfigurations': ?(() { final guardedValue = backendIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackendAddressPoolBackendIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'inboundNatRules': ?inboundNatRules,
      'loadBalancingRules': ?loadBalancingRules,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'outboundRules': ?outboundRules,
    };
  }

  factory GetBackendAddressPoolResult.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolResult(
      backendAddresses: (() { final guardedValue = map['backendAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendAddressPoolBackendAddress>(guardedValue, (value) => GetBackendAddressPoolBackendAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      backendIpConfigurations: (() { final guardedValue = map['backendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackendAddressPoolBackendIpConfiguration>(guardedValue, (value) => GetBackendAddressPoolBackendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      loadBalancingRules: (() { final guardedValue = map['loadBalancingRules']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
