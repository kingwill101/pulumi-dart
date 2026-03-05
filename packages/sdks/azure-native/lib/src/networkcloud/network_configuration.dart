// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_network_configuration.dart';
import 'bgp_service_load_balancer_configuration.dart';
import 'l2_service_load_balancer_configuration.dart';

class NetworkConfiguration {
  /// The configuration of networks being attached to the cluster for use by the workloads that run on this Kubernetes cluster.
  final pulumi.Input<AttachedNetworkConfiguration>? attachedNetworkConfiguration;
  /// The configuration of the BGP service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  final pulumi.Input<BgpServiceLoadBalancerConfiguration>? bgpServiceLoadBalancerConfiguration;
  /// The resource ID of the associated Cloud Services network.
  final pulumi.Input<String> cloudServicesNetworkId;
  /// The resource ID of the Layer 3 network that is used for creation of the Container Networking Interface network.
  final pulumi.Input<String> cniNetworkId;
  /// The IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in service CIDR.
  final pulumi.Input<String>? dnsServiceIp;
  /// The configuration of the Layer 2 service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  final pulumi.Input<L2ServiceLoadBalancerConfiguration>? l2ServiceLoadBalancerConfiguration;
  /// The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final pulumi.Input<List<String>>? podCidrs;
  /// The CIDR notation IP ranges from which to assign service IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final pulumi.Input<List<String>>? serviceCidrs;

  /// Creates a new [NetworkConfiguration].
  /// [attachedNetworkConfiguration] The configuration of networks being attached to the cluster for use by the workloads that run on this Kubernetes cluster.
  /// [bgpServiceLoadBalancerConfiguration] The configuration of the BGP service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  /// [cloudServicesNetworkId] The resource ID of the associated Cloud Services network.
  /// [cniNetworkId] The resource ID of the Layer 3 network that is used for creation of the Container Networking Interface network.
  /// [dnsServiceIp] The IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in service CIDR.
  /// [l2ServiceLoadBalancerConfiguration] The configuration of the Layer 2 service load balancer for this Kubernetes cluster. A maximum of one service load balancer may be specified, either Layer 2 or BGP.
  /// [podCidrs] The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  /// [serviceCidrs] The CIDR notation IP ranges from which to assign service IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  NetworkConfiguration({
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
      'attachedNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<AttachedNetworkConfiguration, Map<String, dynamic>>(attachedNetworkConfiguration, (value) => value.toMap()),
      'bgpServiceLoadBalancerConfiguration': ?pulumi.Input.mapOptionalInputValue<BgpServiceLoadBalancerConfiguration, Map<String, dynamic>>(bgpServiceLoadBalancerConfiguration, (value) => value.toMap()),
      'cloudServicesNetworkId': cloudServicesNetworkId,
      'cniNetworkId': cniNetworkId,
      'dnsServiceIp': ?dnsServiceIp,
      'l2ServiceLoadBalancerConfiguration': ?pulumi.Input.mapOptionalInputValue<L2ServiceLoadBalancerConfiguration, Map<String, dynamic>>(l2ServiceLoadBalancerConfiguration, (value) => value.toMap()),
      'podCidrs': ?podCidrs,
      'serviceCidrs': ?serviceCidrs,
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      attachedNetworkConfiguration: (() { final guardedValue = map['attachedNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpServiceLoadBalancerConfiguration: (() { final guardedValue = map['bgpServiceLoadBalancerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpServiceLoadBalancerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudServicesNetworkId: pulumi.Input.fromValue(map['cloudServicesNetworkId'] as String),
      cniNetworkId: pulumi.Input.fromValue(map['cniNetworkId'] as String),
      dnsServiceIp: (() { final guardedValue = map['dnsServiceIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      l2ServiceLoadBalancerConfiguration: (() { final guardedValue = map['l2ServiceLoadBalancerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(L2ServiceLoadBalancerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podCidrs: (() { final guardedValue = map['podCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceCidrs: (() { final guardedValue = map['serviceCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

