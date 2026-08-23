// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_network_configuration_endpoint_configuration_network_security_group_rule.dart';

class PoolNetworkConfigurationEndpointConfiguration {
  /// The port number on the compute node. Acceptable values are between `1` and `65535` except for `29876`, `29877` as these are reserved. Changing this forces a new resource to be created.
  final pulumi.Input<int> backendPort;
  /// The range of external ports that will be used to provide inbound access to the backendPort on individual compute nodes in the format of `1000-1100`. Acceptable values range between `1` and `65534` except ports from `50000` to `55000` which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. Values must be a range of at least `100` nodes. Changing this forces a new resource to be created.
  final pulumi.Input<String> frontendPortRange;
  /// The name of the endpoint. The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// A list of `networkSecurityGroupRules` blocks as defined below that will be applied to the endpoint. The maximum number of rules that can be specified across all the endpoints on a Batch pool is `25`. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. Set as documented in the networkSecurityGroupRules block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>>? networkSecurityGroupRules;
  /// The protocol of the endpoint. Acceptable values are `TCP` and `UDP`. Changing this forces a new resource to be created.
  final pulumi.Input<String> protocol;

  /// Creates a new [PoolNetworkConfigurationEndpointConfiguration].
  /// [backendPort] The port number on the compute node. Acceptable values are between `1` and `65535` except for `29876`, `29877` as these are reserved. Changing this forces a new resource to be created.
  /// [frontendPortRange] The range of external ports that will be used to provide inbound access to the backendPort on individual compute nodes in the format of `1000-1100`. Acceptable values range between `1` and `65534` except ports from `50000` to `55000` which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. Values must be a range of at least `100` nodes. Changing this forces a new resource to be created.
  /// [name] The name of the endpoint. The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters. Changing this forces a new resource to be created.
  /// [networkSecurityGroupRules] A list of `networkSecurityGroupRules` blocks as defined below that will be applied to the endpoint. The maximum number of rules that can be specified across all the endpoints on a Batch pool is `25`. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. Set as documented in the networkSecurityGroupRules block below. Changing this forces a new resource to be created.
  /// [protocol] The protocol of the endpoint. Acceptable values are `TCP` and `UDP`. Changing this forces a new resource to be created.
  const PoolNetworkConfigurationEndpointConfiguration({
    required this.backendPort,
    required this.frontendPortRange,
    required this.name,
    this.networkSecurityGroupRules,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPortRange': frontendPortRange,
      'name': name,
      'networkSecurityGroupRules': ?pulumi.Input.mapOptionalInputValue<List<PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>, List<Map<String, dynamic>>>(networkSecurityGroupRules, (value) => pulumi.Input.encodeList<PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
    };
  }

  factory PoolNetworkConfigurationEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolNetworkConfigurationEndpointConfiguration(
      backendPort: pulumi.Input.fromValue(map['backendPort'] as int),
      frontendPortRange: pulumi.Input.fromValue(map['frontendPortRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroupRules: (() { final guardedValue = map['networkSecurityGroupRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule>(guardedValue, (value) => PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
