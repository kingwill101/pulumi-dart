// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterNetworkProfile {
  /// IP address within the Kubernetes service address range used by cluster service discovery (kube-dns).
  final pulumi.Input<String> dnsServiceIp;
  /// IP address (in CIDR notation) used as the Docker bridge IP address on nodes.
  final pulumi.Input<String> dockerBridgeCidr;
  final pulumi.Input<String> loadBalancerSku;
  /// Network plugin used such as `azure` or `kubenet`.
  final pulumi.Input<String> networkPlugin;
  /// Network policy to be used with Azure CNI. e.g. `calico` or `azure`
  final pulumi.Input<String> networkPolicy;
  /// The outbound (egress) routing method which is used for cluster egress traffic.
  final pulumi.Input<String> outboundType;
  /// The CIDR used for pod IP addresses.
  final pulumi.Input<String> podCidr;
  /// Network range used by the Kubernetes service.
  final pulumi.Input<String> serviceCidr;

  /// Creates a new [GetKubernetesClusterNetworkProfile].
  /// [dnsServiceIp] IP address within the Kubernetes service address range used by cluster service discovery (kube-dns).
  /// [dockerBridgeCidr] IP address (in CIDR notation) used as the Docker bridge IP address on nodes.
  /// [loadBalancerSku] Required.
  /// [networkPlugin] Network plugin used such as `azure` or `kubenet`.
  /// [networkPolicy] Network policy to be used with Azure CNI. e.g. `calico` or `azure`
  /// [outboundType] The outbound (egress) routing method which is used for cluster egress traffic.
  /// [podCidr] The CIDR used for pod IP addresses.
  /// [serviceCidr] Network range used by the Kubernetes service.
  const GetKubernetesClusterNetworkProfile({
    required this.dnsServiceIp,
    required this.dockerBridgeCidr,
    required this.loadBalancerSku,
    required this.networkPlugin,
    required this.networkPolicy,
    required this.outboundType,
    required this.podCidr,
    required this.serviceCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServiceIp': dnsServiceIp,
      'dockerBridgeCidr': dockerBridgeCidr,
      'loadBalancerSku': loadBalancerSku,
      'networkPlugin': networkPlugin,
      'networkPolicy': networkPolicy,
      'outboundType': outboundType,
      'podCidr': podCidr,
      'serviceCidr': serviceCidr,
    };
  }

  factory GetKubernetesClusterNetworkProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNetworkProfile(
      dnsServiceIp: pulumi.Input.fromValue(map['dnsServiceIp'] as String),
      dockerBridgeCidr: pulumi.Input.fromValue(map['dockerBridgeCidr'] as String),
      loadBalancerSku: pulumi.Input.fromValue(map['loadBalancerSku'] as String),
      networkPlugin: pulumi.Input.fromValue(map['networkPlugin'] as String),
      networkPolicy: pulumi.Input.fromValue(map['networkPolicy'] as String),
      outboundType: pulumi.Input.fromValue(map['outboundType'] as String),
      podCidr: pulumi.Input.fromValue(map['podCidr'] as String),
      serviceCidr: pulumi.Input.fromValue(map['serviceCidr'] as String),
    );
  }
}
