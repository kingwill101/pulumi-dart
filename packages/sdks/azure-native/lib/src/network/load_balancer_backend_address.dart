// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Load balancer backend addresses.
class LoadBalancerBackendAddress {
  /// A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  final pulumi.Input<String>? adminState;
  /// IP Address belonging to the referenced virtual network.
  final pulumi.Input<String>? ipAddress;
  /// Reference to the frontend ip address configuration defined in regional loadbalancer.
  final pulumi.Input<SubResource>? loadBalancerFrontendIPConfiguration;
  /// Name of the backend address.
  final pulumi.Input<String>? name;
  /// Reference to an existing subnet.
  final pulumi.Input<SubResource>? subnet;
  /// Reference to an existing virtual network.
  final pulumi.Input<SubResource>? virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddress].
  /// [adminState] A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  /// [ipAddress] IP Address belonging to the referenced virtual network.
  /// [loadBalancerFrontendIPConfiguration] Reference to the frontend ip address configuration defined in regional loadbalancer.
  /// [name] Name of the backend address.
  /// [subnet] Reference to an existing subnet.
  /// [virtualNetwork] Reference to an existing virtual network.
  const LoadBalancerBackendAddress({
    this.adminState,
    this.ipAddress,
    this.loadBalancerFrontendIPConfiguration,
    this.name,
    this.subnet,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'ipAddress': ?ipAddress,
      'loadBalancerFrontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(loadBalancerFrontendIPConfiguration, (value) => value.toMap()),
      'name': ?name,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory LoadBalancerBackendAddress.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddress(
      adminState: (() { final guardedValue = map['adminState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerFrontendIPConfiguration: (() { final guardedValue = map['loadBalancerFrontendIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
