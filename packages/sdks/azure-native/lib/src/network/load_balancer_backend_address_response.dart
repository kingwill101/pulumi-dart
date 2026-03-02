// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_rule_port_mapping_response.dart';
import 'sub_resource_response.dart';

/// Load balancer backend addresses.
class LoadBalancerBackendAddressResponse {
  /// A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  final pulumi.Input<String>? adminState;
  /// Collection of inbound NAT rule port mappings.
  final pulumi.Input<List<NatRulePortMappingResponse>> inboundNatRulesPortMapping;
  /// IP Address belonging to the referenced virtual network.
  final pulumi.Input<String>? ipAddress;
  /// Reference to the frontend ip address configuration defined in regional loadbalancer.
  final pulumi.Input<SubResourceResponse>? loadBalancerFrontendIPConfiguration;
  /// Name of the backend address.
  final pulumi.Input<String>? name;
  /// Reference to IP address defined in network interfaces.
  final pulumi.Input<SubResourceResponse> networkInterfaceIPConfiguration;
  /// Reference to an existing subnet.
  final pulumi.Input<SubResourceResponse>? subnet;
  /// Reference to an existing virtual network.
  final pulumi.Input<SubResourceResponse>? virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddressResponse].
  /// [adminState] A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  /// [inboundNatRulesPortMapping] Collection of inbound NAT rule port mappings.
  /// [ipAddress] IP Address belonging to the referenced virtual network.
  /// [loadBalancerFrontendIPConfiguration] Reference to the frontend ip address configuration defined in regional loadbalancer.
  /// [name] Name of the backend address.
  /// [networkInterfaceIPConfiguration] Reference to IP address defined in network interfaces.
  /// [subnet] Reference to an existing subnet.
  /// [virtualNetwork] Reference to an existing virtual network.
  LoadBalancerBackendAddressResponse({
    this.adminState,
    required this.inboundNatRulesPortMapping,
    this.ipAddress,
    this.loadBalancerFrontendIPConfiguration,
    this.name,
    required this.networkInterfaceIPConfiguration,
    this.subnet,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'inboundNatRulesPortMapping': pulumi.Input.mapInputValue<List<NatRulePortMappingResponse>, List<Map<String, dynamic>>>(inboundNatRulesPortMapping, (value) => pulumi.Input.encodeList<NatRulePortMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ?ipAddress,
      'loadBalancerFrontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(loadBalancerFrontendIPConfiguration, (value) => value.toMap()),
      'name': ?name,
      'networkInterfaceIPConfiguration': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(networkInterfaceIPConfiguration, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory LoadBalancerBackendAddressResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressResponse(
      adminState: map['adminState'] == null ? null : (map['adminState']! as String).input(),
      inboundNatRulesPortMapping: (pulumi.Input.decodeList<NatRulePortMappingResponse>(map['inboundNatRulesPortMapping'], (value) => NatRulePortMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      loadBalancerFrontendIPConfiguration: map['loadBalancerFrontendIPConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['loadBalancerFrontendIPConfiguration']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkInterfaceIPConfiguration: (SubResourceResponse.fromMap((map['networkInterfaceIPConfiguration'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      virtualNetwork: map['virtualNetwork'] == null ? null : (SubResourceResponse.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

