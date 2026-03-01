// ignore_for_file: unused_element, unnecessary_cast

import 'private_ipaddress_response.dart';

/// A load balancer configuration for an availability group listener.
class LoadBalancerConfigurationResponse {
  /// Resource id of the load balancer.
  final String? loadBalancerResourceId;
  /// Private IP address.
  final PrivateIPAddressResponse? privateIpAddress;
  /// Probe port.
  final int? probePort;
  /// Resource id of the public IP.
  final String? publicIpAddressResourceId;
  /// List of the SQL virtual machine instance resource id's that are enrolled into the availability group listener.
  final List<String>? sqlVirtualMachineInstances;

  /// Creates a new [LoadBalancerConfigurationResponse].
  /// [loadBalancerResourceId] Resource id of the load balancer.
  /// [privateIpAddress] Private IP address.
  /// [probePort] Probe port.
  /// [publicIpAddressResourceId] Resource id of the public IP.
  /// [sqlVirtualMachineInstances] List of the SQL virtual machine instance resource id's that are enrolled into the availability group listener.
  LoadBalancerConfigurationResponse({
    this.loadBalancerResourceId,
    this.privateIpAddress,
    this.probePort,
    this.publicIpAddressResourceId,
    this.sqlVirtualMachineInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerResourceId': ?loadBalancerResourceId,
      'privateIpAddress': ?privateIpAddress == null ? null : privateIpAddress!.toMap(),
      'probePort': ?probePort,
      'publicIpAddressResourceId': ?publicIpAddressResourceId,
      'sqlVirtualMachineInstances': ?sqlVirtualMachineInstances,
    };
  }

  factory LoadBalancerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigurationResponse(
      loadBalancerResourceId: map['loadBalancerResourceId'] == null ? null : map['loadBalancerResourceId'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : PrivateIPAddressResponse.fromMap((map['privateIpAddress'] as Map).cast<String, dynamic>()),
      probePort: map['probePort'] == null ? null : map['probePort'] as int,
      publicIpAddressResourceId: map['publicIpAddressResourceId'] == null ? null : map['publicIpAddressResourceId'] as String,
      sqlVirtualMachineInstances: map['sqlVirtualMachineInstances'] == null ? null : (map['sqlVirtualMachineInstances'] as List).cast<String>(),
    );
  }
}

