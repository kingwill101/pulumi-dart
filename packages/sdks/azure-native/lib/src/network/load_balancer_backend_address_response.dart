// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_rule_port_mapping_response.dart';
import 'sub_resource_response.dart';

/// Load balancer backend addresses.
class LoadBalancerBackendAddressResponse {
  /// A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  final String? adminState;
  /// Collection of inbound NAT rule port mappings.
  final List<NatRulePortMappingResponse> inboundNatRulesPortMapping;
  /// IP Address belonging to the referenced virtual network.
  final String? ipAddress;
  /// Reference to the frontend ip address configuration defined in regional loadbalancer.
  final SubResourceResponse? loadBalancerFrontendIPConfiguration;
  /// Name of the backend address.
  final String? name;
  /// Reference to IP address defined in network interfaces.
  final SubResourceResponse networkInterfaceIPConfiguration;
  /// Reference to an existing subnet.
  final SubResourceResponse? subnet;
  /// Reference to an existing virtual network.
  final SubResourceResponse? virtualNetwork;

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
      'inboundNatRulesPortMapping': pulumi.Input.encodeList<NatRulePortMappingResponse, Map<String, dynamic>>(inboundNatRulesPortMapping, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'loadBalancerFrontendIPConfiguration': ?loadBalancerFrontendIPConfiguration == null ? null : loadBalancerFrontendIPConfiguration!.toMap(),
      'name': ?name,
      'networkInterfaceIPConfiguration': networkInterfaceIPConfiguration.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'virtualNetwork': ?virtualNetwork == null ? null : virtualNetwork!.toMap(),
    };
  }

  factory LoadBalancerBackendAddressResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressResponse(
      adminState: map['adminState'] == null ? null : map['adminState'] as String,
      inboundNatRulesPortMapping: pulumi.Input.decodeList<NatRulePortMappingResponse>(map['inboundNatRulesPortMapping'], (value) => NatRulePortMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      loadBalancerFrontendIPConfiguration: map['loadBalancerFrontendIPConfiguration'] == null ? null : SubResourceResponse.fromMap((map['loadBalancerFrontendIPConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkInterfaceIPConfiguration: SubResourceResponse.fromMap((map['networkInterfaceIPConfiguration'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      virtualNetwork: map['virtualNetwork'] == null ? null : SubResourceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

