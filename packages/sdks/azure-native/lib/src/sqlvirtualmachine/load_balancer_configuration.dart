// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_ipaddress.dart';

/// A load balancer configuration for an availability group listener.
class LoadBalancerConfiguration {
  /// Resource id of the load balancer.
  final pulumi.Input<String?>? loadBalancerResourceId;
  /// Private IP address.
  final pulumi.Input<PrivateIPAddress?>? privateIpAddress;
  /// Probe port.
  final pulumi.Input<int?>? probePort;
  /// Resource id of the public IP.
  final pulumi.Input<String?>? publicIpAddressResourceId;
  /// List of the SQL virtual machine instance resource id's that are enrolled into the availability group listener.
  final pulumi.Input<List<String>?>? sqlVirtualMachineInstances;

  /// Creates a new [LoadBalancerConfiguration].
  /// [loadBalancerResourceId] Resource id of the load balancer.
  /// [privateIpAddress] Private IP address.
  /// [probePort] Probe port.
  /// [publicIpAddressResourceId] Resource id of the public IP.
  /// [sqlVirtualMachineInstances] List of the SQL virtual machine instance resource id's that are enrolled into the availability group listener.
  const LoadBalancerConfiguration({
    this.loadBalancerResourceId,
    this.privateIpAddress,
    this.probePort,
    this.publicIpAddressResourceId,
    this.sqlVirtualMachineInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerResourceId': ?loadBalancerResourceId,
      'privateIpAddress': ?pulumi.Input.mapOptionalInputValue<PrivateIPAddress, Map<String, dynamic>>(privateIpAddress, (value) => value.toMap()),
      'probePort': ?probePort,
      'publicIpAddressResourceId': ?publicIpAddressResourceId,
      'sqlVirtualMachineInstances': ?sqlVirtualMachineInstances,
    };
  }

  factory LoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfiguration(
      loadBalancerResourceId: (() { final guardedValue = map['loadBalancerResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateIPAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      probePort: (() { final guardedValue = map['probePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      publicIpAddressResourceId: (() { final guardedValue = map['publicIpAddressResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlVirtualMachineInstances: (() { final guardedValue = map['sqlVirtualMachineInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
