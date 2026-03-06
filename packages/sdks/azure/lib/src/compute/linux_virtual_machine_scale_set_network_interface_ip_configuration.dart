// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address.dart';

class LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration {
  /// A list of Backend Address Pools ID's from a Application Gateway which this Virtual Machine Scale Set should be connected to.
  final pulumi.Input<List<String>>? applicationGatewayBackendAddressPoolIds;
  /// A list of Application Security Group ID's which this Virtual Machine Scale Set should be connected to.
  final pulumi.Input<List<String>>? applicationSecurityGroupIds;
  /// A list of Backend Address Pools ID's from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  ///
  /// &gt; **Note:** When the Virtual Machine Scale Set is configured to have public IPs per instance are created with a load balancer, the SKU of the Virtual Machine instance IPs is determined by the SKU of the Virtual Machine Scale Sets Load Balancer (e.g. `Basic` or `Standard`). Alternatively, you may use the `public_ip_prefix_id` field to generate instance-level IPs in a virtual machine scale set as well. The zonal properties of the prefix will be passed to the Virtual Machine instance IPs, though they will not be shown in the output. To view the public IP addresses assigned to the Virtual Machine Scale Sets Virtual Machine instances use the **az vmss list-instance-public-ips --resource-group `ResourceGroupName` --name `VirtualMachineScaleSetName`** CLI command.
  ///
  /// &gt; **Note:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a `depends_on` between this resource and the Load Balancer Rule.
  final pulumi.Input<List<String>>? loadBalancerBackendAddressPoolIds;
  /// A list of NAT Rule ID's from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  ///
  /// &gt; **Note:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a `depends_on` between this resource and the Load Balancer Rule.
  final pulumi.Input<List<String>>? loadBalancerInboundNatRulesIds;
  /// The Name which should be used for this IP Configuration.
  final pulumi.Input<String> name;
  /// Is this the Primary IP Configuration for this Network Interface? Defaults to `false`.
  ///
  /// &gt; **Note:** One `ip_configuration` block must be marked as Primary for each Network Interface.
  final pulumi.Input<bool>? primary;
  /// A `public_ip_address` block as defined below.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>>? publicIpAddresses;
  /// The ID of the Subnet which this IP Configuration should be connected to.
  ///
  /// &gt; **Note:** `subnet_id` is required if `version` is set to `IPv4`.
  final pulumi.Input<String>? subnetId;
  /// The Internet Protocol Version which should be used for this IP Configuration. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`.
  final pulumi.Input<String>? version;

  /// Creates a new [LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration].
  /// [applicationGatewayBackendAddressPoolIds] A list of Backend Address Pools ID's from a Application Gateway which this Virtual Machine Scale Set should be connected to.
  /// [applicationSecurityGroupIds] A list of Application Security Group ID's which this Virtual Machine Scale Set should be connected to.
  /// [loadBalancerBackendAddressPoolIds] A list of Backend Address Pools ID's from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  /// [loadBalancerInboundNatRulesIds] A list of NAT Rule ID's from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  /// [name] The Name which should be used for this IP Configuration.
  /// [primary] Is this the Primary IP Configuration for this Network Interface? Defaults to `false`.
  /// [publicIpAddresses] A `public_ip_address` block as defined below.
  /// [subnetId] The ID of the Subnet which this IP Configuration should be connected to.
  /// [version] The Internet Protocol Version which should be used for this IP Configuration. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`.
  const LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    this.loadBalancerInboundNatRulesIds,
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
      'loadBalancerInboundNatRulesIds': ?loadBalancerInboundNatRulesIds,
      'name': name,
      'primary': ?primary,
      'publicIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>, List<Map<String, dynamic>>>(publicIpAddresses, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetId': ?subnetId,
      'version': ?version,
    };
  }

  factory LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration(
      applicationGatewayBackendAddressPoolIds: (() { final guardedValue = map['applicationGatewayBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationSecurityGroupIds: (() { final guardedValue = map['applicationSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerBackendAddressPoolIds: (() { final guardedValue = map['loadBalancerBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerInboundNatRulesIds: (() { final guardedValue = map['loadBalancerInboundNatRulesIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>(guardedValue, (value) => LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

