// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_subnet_delegation_service_delegation.dart';

class VirtualNetworkSubnetDelegation {
  /// A name for this delegation.
  final String name;
  /// A `service_delegation` block as defined below.
  final VirtualNetworkSubnetDelegationServiceDelegation serviceDelegation;

  /// Creates a new [VirtualNetworkSubnetDelegation].
  /// [name] A name for this delegation.
  /// [serviceDelegation] A `service_delegation` block as defined below.
  VirtualNetworkSubnetDelegation({
    required this.name,
    required this.serviceDelegation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'serviceDelegation': serviceDelegation.toMap(),
    };
  }

  factory VirtualNetworkSubnetDelegation.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetDelegation(
      name: map['name'] as String,
      serviceDelegation: VirtualNetworkSubnetDelegationServiceDelegation.fromMap((map['serviceDelegation'] as Map).cast<String, dynamic>()),
    );
  }
}

