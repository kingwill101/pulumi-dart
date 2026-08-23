// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_network_configuration_endpoint_configuration_network_security_group_rule.dart';

class GetPoolNetworkConfigurationEndpointConfiguration {
  /// The port number on the compute node.
  final pulumi.Input<int> backendPort;
  /// The range of external ports that are used to provide inbound access to the backendPort on the individual compute nodes in the format of `1000-1100`.
  final pulumi.Input<String> frontendPortRange;
  /// The name of the Batch pool.
  final pulumi.Input<String> name;
  /// The list of network security group rules that are applied to the endpoint.
  final pulumi.Input<List<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>> networkSecurityGroupRules;
  /// The protocol of the endpoint.
  final pulumi.Input<String> protocol;

  /// Creates a new [GetPoolNetworkConfigurationEndpointConfiguration].
  /// [backendPort] The port number on the compute node.
  /// [frontendPortRange] The range of external ports that are used to provide inbound access to the backendPort on the individual compute nodes in the format of `1000-1100`.
  /// [name] The name of the Batch pool.
  /// [networkSecurityGroupRules] The list of network security group rules that are applied to the endpoint.
  /// [protocol] The protocol of the endpoint.
  const GetPoolNetworkConfigurationEndpointConfiguration({
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
      'networkSecurityGroupRules': pulumi.Input.mapInputValue<List<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>, List<Map<String, dynamic>>>(networkSecurityGroupRules, (value) => pulumi.Input.encodeList<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
    };
  }

  factory GetPoolNetworkConfigurationEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetPoolNetworkConfigurationEndpointConfiguration(
      backendPort: pulumi.Input.fromValue(map['backendPort'] as int),
      frontendPortRange: pulumi.Input.fromValue(map['frontendPortRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroupRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>(map['networkSecurityGroupRules']!, (value) => GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
