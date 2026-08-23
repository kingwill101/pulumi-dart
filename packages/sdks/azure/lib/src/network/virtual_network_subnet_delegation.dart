// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet_delegation_service_delegation.dart';

class VirtualNetworkSubnetDelegation {
  /// A name for this delegation.
  final pulumi.Input<String> name;
  /// A `serviceDelegation` block as defined below.
  final pulumi.Input<VirtualNetworkSubnetDelegationServiceDelegation> serviceDelegation;

  /// Creates a new [VirtualNetworkSubnetDelegation].
  /// [name] A name for this delegation.
  /// [serviceDelegation] A `serviceDelegation` block as defined below.
  const VirtualNetworkSubnetDelegation({
    required this.name,
    required this.serviceDelegation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'serviceDelegation': pulumi.Input.mapInputValue<VirtualNetworkSubnetDelegationServiceDelegation, Map<String, dynamic>>(serviceDelegation, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkSubnetDelegation.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetDelegation(
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceDelegation: pulumi.Input.fromValue(VirtualNetworkSubnetDelegationServiceDelegation.fromMap((map['serviceDelegation']! as Map).cast<String, dynamic>())),
    );
  }
}
