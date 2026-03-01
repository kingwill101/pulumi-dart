// ignore_for_file: unused_element, unnecessary_cast

import 'attached_network_configuration_response.dart';
import 'bgp_service_load_balancer_configuration_response.dart';
import 'l2_service_load_balancer_configuration_response.dart';

class NetworkConfigurationResponse {
  /// The configuration of networks being attached to the cluster for use by the workloads that run on this Kubernetes cluster.
  final AttachedNetworkConfigurationResponse? attachedNetworkConfiguration;
  /// The configuration of the BGP service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  final BgpServiceLoadBalancerConfigurationResponse? bgpServiceLoadBalancerConfiguration;
  /// The resource ID of the associated Cloud Services network.
  final String cloudServicesNetworkId;
  /// The resource ID of the Layer 3 network that is used for creation of the Container Networking Interface network.
  final String cniNetworkId;
  /// The IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in service CIDR.
  final String? dnsServiceIp;
  /// The configuration of the Layer 2 service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  final L2ServiceLoadBalancerConfigurationResponse? l2ServiceLoadBalancerConfiguration;
  /// The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final List<String>? podCidrs;
  /// The CIDR notation IP ranges from which to assign service IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final List<String>? serviceCidrs;

  /// Creates a new [NetworkConfigurationResponse].
  /// [attachedNetworkConfiguration] The configuration of networks being attached to the cluster for use by the workloads that run on this Kubernetes cluster.
  /// [bgpServiceLoadBalancerConfiguration] The configuration of the BGP service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  /// [cloudServicesNetworkId] The resource ID of the associated Cloud Services network.
  /// [cniNetworkId] The resource ID of the Layer 3 network that is used for creation of the Container Networking Interface network.
  /// [dnsServiceIp] The IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in service CIDR.
  /// [l2ServiceLoadBalancerConfiguration] The configuration of the Layer 2 service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  /// [podCidrs] The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  /// [serviceCidrs] The CIDR notation IP ranges from which to assign service IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  NetworkConfigurationResponse({
    this.attachedNetworkConfiguration,
    this.bgpServiceLoadBalancerConfiguration,
    required this.cloudServicesNetworkId,
    required this.cniNetworkId,
    this.dnsServiceIp,
    this.l2ServiceLoadBalancerConfiguration,
    this.podCidrs,
    this.serviceCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedNetworkConfiguration': ?attachedNetworkConfiguration == null ? null : attachedNetworkConfiguration!.toMap(),
      'bgpServiceLoadBalancerConfiguration': ?bgpServiceLoadBalancerConfiguration == null ? null : bgpServiceLoadBalancerConfiguration!.toMap(),
      'cloudServicesNetworkId': cloudServicesNetworkId,
      'cniNetworkId': cniNetworkId,
      'dnsServiceIp': ?dnsServiceIp,
      'l2ServiceLoadBalancerConfiguration': ?l2ServiceLoadBalancerConfiguration == null ? null : l2ServiceLoadBalancerConfiguration!.toMap(),
      'podCidrs': ?podCidrs,
      'serviceCidrs': ?serviceCidrs,
    };
  }

  factory NetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigurationResponse(
      attachedNetworkConfiguration: map['attachedNetworkConfiguration'] == null ? null : AttachedNetworkConfigurationResponse.fromMap((map['attachedNetworkConfiguration'] as Map).cast<String, dynamic>()),
      bgpServiceLoadBalancerConfiguration: map['bgpServiceLoadBalancerConfiguration'] == null ? null : BgpServiceLoadBalancerConfigurationResponse.fromMap((map['bgpServiceLoadBalancerConfiguration'] as Map).cast<String, dynamic>()),
      cloudServicesNetworkId: map['cloudServicesNetworkId'] as String,
      cniNetworkId: map['cniNetworkId'] as String,
      dnsServiceIp: map['dnsServiceIp'] == null ? null : map['dnsServiceIp'] as String,
      l2ServiceLoadBalancerConfiguration: map['l2ServiceLoadBalancerConfiguration'] == null ? null : L2ServiceLoadBalancerConfigurationResponse.fromMap((map['l2ServiceLoadBalancerConfiguration'] as Map).cast<String, dynamic>()),
      podCidrs: map['podCidrs'] == null ? null : (map['podCidrs'] as List).cast<String>(),
      serviceCidrs: map['serviceCidrs'] == null ? null : (map['serviceCidrs'] as List).cast<String>(),
    );
  }
}

