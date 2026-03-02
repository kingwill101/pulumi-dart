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
  LoadBalancerBackendAddress({
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
      adminState: map['adminState'] == null ? null : (map['adminState']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      loadBalancerFrontendIPConfiguration: map['loadBalancerFrontendIPConfiguration'] == null ? null : (SubResource.fromMap((map['loadBalancerFrontendIPConfiguration']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subnet: map['subnet'] == null ? null : (SubResource.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      virtualNetwork: map['virtualNetwork'] == null ? null : (SubResource.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

