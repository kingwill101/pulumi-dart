// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address.dart';

class OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration {
  /// A list of Backend Address Pools IDs from a Application Gateway which this Virtual Machine Scale Set should be connected to.
  final pulumi.Input<List<String>>? applicationGatewayBackendAddressPoolIds;
  /// A list of Application Security Group IDs which this Virtual Machine Scale Set should be connected to.
  final pulumi.Input<List<String>>? applicationSecurityGroupIds;
  /// A list of Backend Address Pools IDs from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  ///
  /// &gt; **Note:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a depends_on between this resource and the Load Balancer Rule.
  final pulumi.Input<List<String>>? loadBalancerBackendAddressPoolIds;
  /// The Name which should be used for this IP Configuration.
  final pulumi.Input<String> name;
  /// Is this the Primary IP Configuration for this Network Interface? Possible values are `true` and `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** One `ip_configuration` block must be marked as Primary for each Network Interface.
  final pulumi.Input<bool>? primary;
  /// A `public_ip_address` block as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>>? publicIpAddresses;
  /// The ID of the Subnet which this IP Configuration should be connected to.
  ///
  /// &gt; **Note:** `subnet_id` is required if version is set to `IPv4`.
  final pulumi.Input<String>? subnetId;
  /// The Internet Protocol Version which should be used for this IP Configuration. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`.
  final pulumi.Input<String>? version;

  /// Creates a new [OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration].
  /// [applicationGatewayBackendAddressPoolIds] A list of Backend Address Pools IDs from a Application Gateway which this Virtual Machine Scale Set should be connected to.
  /// [applicationSecurityGroupIds] A list of Application Security Group IDs which this Virtual Machine Scale Set should be connected to.
  /// [loadBalancerBackendAddressPoolIds] A list of Backend Address Pools IDs from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  /// [name] The Name which should be used for this IP Configuration.
  /// [primary] Is this the Primary IP Configuration for this Network Interface? Possible values are `true` and `false`. Defaults to `false`.
  /// [publicIpAddresses] A `public_ip_address` block as defined below.
  /// [subnetId] The ID of the Subnet which this IP Configuration should be connected to.
  /// [version] The Internet Protocol Version which should be used for this IP Configuration. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`.
  const OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    required this.name,
    this.primary,
    this.publicIpAddresses,
    this.subnetId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolIds': ?applicationGatewayBackendAddressPoolIds,
      'applicationSecurityGroupIds': ?applicationSecurityGroupIds,
      'loadBalancerBackendAddressPoolIds': ?loadBalancerBackendAddressPoolIds,
      'name': name,
      'primary': ?primary,
      'publicIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>, List<Map<String, dynamic>>>(publicIpAddresses, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetId': ?subnetId,
      'version': ?version,
    };
  }

  factory OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration(
      applicationGatewayBackendAddressPoolIds: (() { final guardedValue = map['applicationGatewayBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationSecurityGroupIds: (() { final guardedValue = map['applicationSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerBackendAddressPoolIds: (() { final guardedValue = map['loadBalancerBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>(guardedValue, (value) => OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

