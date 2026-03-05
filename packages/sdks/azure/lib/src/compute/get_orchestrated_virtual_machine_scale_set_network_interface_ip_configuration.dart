// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orchestrated_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address.dart';

class GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration {
  /// An array of references to backend address pools of application gateways.
  final pulumi.Input<List<String>> applicationGatewayBackendAddressPoolIds;
  /// The application security group IDs to use.
  final pulumi.Input<List<String>> applicationSecurityGroupIds;
  /// An array of references to backend address pools of load balancers.
  final pulumi.Input<List<String>> loadBalancerBackendAddressPoolIds;
  /// An array of references to inbound NAT pools for load balancers.
  final pulumi.Input<List<String>> loadBalancerInboundNatRulesIds;
  /// The name of this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> name;
  /// If this ip_configuration is the primary one.
  final pulumi.Input<bool> primary;
  /// The virtual machines scale set IP Configuration's PublicIPAddress configuration. The `public_ip_address` is documented below.
  final pulumi.Input<List<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>> publicIpAddresses;
  /// The identifier of the subnet.
  final pulumi.Input<String> subnetId;
  /// The Internet Protocol Version of the public IP address.
  final pulumi.Input<String> version;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration].
  /// [applicationGatewayBackendAddressPoolIds] An array of references to backend address pools of application gateways.
  /// [applicationSecurityGroupIds] The application security group IDs to use.
  /// [loadBalancerBackendAddressPoolIds] An array of references to backend address pools of load balancers.
  /// [loadBalancerInboundNatRulesIds] An array of references to inbound NAT pools for load balancers.
  /// [name] The name of this Orchestrated Virtual Machine Scale Set.
  /// [primary] If this ip_configuration is the primary one.
  /// [publicIpAddresses] The virtual machines scale set IP Configuration's PublicIPAddress configuration. The `public_ip_address` is documented below.
  /// [subnetId] The identifier of the subnet.
  /// [version] The Internet Protocol Version of the public IP address.
  GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration({
    required this.applicationGatewayBackendAddressPoolIds,
    required this.applicationSecurityGroupIds,
    required this.loadBalancerBackendAddressPoolIds,
    required this.loadBalancerInboundNatRulesIds,
    required this.name,
    required this.primary,
    required this.publicIpAddresses,
    required this.subnetId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolIds': applicationGatewayBackendAddressPoolIds,
      'applicationSecurityGroupIds': applicationSecurityGroupIds,
      'loadBalancerBackendAddressPoolIds': loadBalancerBackendAddressPoolIds,
      'loadBalancerInboundNatRulesIds': loadBalancerInboundNatRulesIds,
      'name': name,
      'primary': primary,
      'publicIpAddresses': pulumi.Input.mapInputValue<List<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>, List<Map<String, dynamic>>>(publicIpAddresses, (value) => pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetId': subnetId,
      'version': version,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration(
      applicationGatewayBackendAddressPoolIds: pulumi.Input.fromValue((map['applicationGatewayBackendAddressPoolIds'] as List).cast<String>()),
      applicationSecurityGroupIds: pulumi.Input.fromValue((map['applicationSecurityGroupIds'] as List).cast<String>()),
      loadBalancerBackendAddressPoolIds: pulumi.Input.fromValue((map['loadBalancerBackendAddressPoolIds'] as List).cast<String>()),
      loadBalancerInboundNatRulesIds: pulumi.Input.fromValue((map['loadBalancerInboundNatRulesIds'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      publicIpAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>(map['publicIpAddresses']!, (value) => GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap((value as Map).cast<String, dynamic>()))),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

