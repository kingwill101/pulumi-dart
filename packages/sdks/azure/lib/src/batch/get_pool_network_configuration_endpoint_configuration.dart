// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_network_configuration_endpoint_configuration_network_security_group_rule.dart';

class GetPoolNetworkConfigurationEndpointConfiguration {
  /// The port number on the compute node.
  final int backendPort;
  /// The range of external ports that are used to provide inbound access to the backendPort on the individual compute nodes in the format of `1000-1100`.
  final String frontendPortRange;
  /// The name of the Batch pool.
  final String name;
  /// The list of network security group rules that are applied to the endpoint.
  final List<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule> networkSecurityGroupRules;
  /// The protocol of the endpoint.
  final String protocol;

  /// Creates a new [GetPoolNetworkConfigurationEndpointConfiguration].
  /// [backendPort] The port number on the compute node.
  /// [frontendPortRange] The range of external ports that are used to provide inbound access to the backendPort on the individual compute nodes in the format of `1000-1100`.
  /// [name] The name of the Batch pool.
  /// [networkSecurityGroupRules] The list of network security group rules that are applied to the endpoint.
  /// [protocol] The protocol of the endpoint.
  GetPoolNetworkConfigurationEndpointConfiguration({
    required this.backendPort,
    required this.frontendPortRange,
    required this.name,
    required this.networkSecurityGroupRules,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPortRange': frontendPortRange,
      'name': name,
      'networkSecurityGroupRules': pulumi.Input.encodeList<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule, Map<String, dynamic>>(networkSecurityGroupRules, (value) => value.toMap()),
      'protocol': protocol,
    };
  }

  factory GetPoolNetworkConfigurationEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetPoolNetworkConfigurationEndpointConfiguration(
      backendPort: map['backendPort'] as int,
      frontendPortRange: map['frontendPortRange'] as String,
      name: map['name'] as String,
      networkSecurityGroupRules: pulumi.Input.decodeList<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>(map['networkSecurityGroupRules'], (value) => GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
    );
  }
}

