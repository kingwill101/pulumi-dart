// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_address_inbound_nat_rule_port_mapping.dart';

/// Input properties used for looking up and filtering BackendAddressPoolAddress resources.
class BackendAddressPoolAddressState {
  /// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
  ///
  /// > **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2.
  final pulumi.Input<String>? backendAddressIpConfigurationId;
  /// The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
  final pulumi.Input<String>? backendAddressPoolId;
  /// A list of `inbound_nat_rule_port_mapping` block as defined below.
  final pulumi.Input<List<BackendAddressPoolAddressInboundNatRulePortMapping>>? inboundNatRulePortMappings;
  /// The Static IP Address which should be allocated to this Backend Address Pool.
  final pulumi.Input<String>? ipAddress;
  /// The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [BackendAddressPoolAddressState].
  /// [backendAddressIpConfigurationId] The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
  /// [backendAddressPoolId] The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
  /// [inboundNatRulePortMappings] A list of `inbound_nat_rule_port_mapping` block as defined below.
  /// [ipAddress] The Static IP Address which should be allocated to this Backend Address Pool.
  /// [name] The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created.
  /// [virtualNetworkId] The ID of the Virtual Network within which the Backend Address Pool should exist.
  BackendAddressPoolAddressState({
    this.backendAddressIpConfigurationId,
    this.backendAddressPoolId,
    this.inboundNatRulePortMappings,
    this.ipAddress,
    this.name,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressIpConfigurationId': ?backendAddressIpConfigurationId,
      'backendAddressPoolId': ?backendAddressPoolId,
      'inboundNatRulePortMappings': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPoolAddressInboundNatRulePortMapping>, List<Map<String, dynamic>>>(inboundNatRulePortMappings, (value) => pulumi.Input.encodeList<BackendAddressPoolAddressInboundNatRulePortMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory BackendAddressPoolAddressState.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolAddressState(
      backendAddressIpConfigurationId: map['backendAddressIpConfigurationId'] == null ? null : (map['backendAddressIpConfigurationId']! as String).input(),
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : (map['backendAddressPoolId']! as String).input(),
      inboundNatRulePortMappings: map['inboundNatRulePortMappings'] == null ? null : (pulumi.Input.decodeList<BackendAddressPoolAddressInboundNatRulePortMapping>(map['inboundNatRulePortMappings']!, (value) => BackendAddressPoolAddressInboundNatRulePortMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']! as String).input(),
    );
  }
}

