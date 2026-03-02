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
  /// [podCidr] The CIDR used for pod IP addresses.
  /// [serviceCidr] Network range used by the Kubernetes service.
  GetKubernetesClusterNetworkProfile({
    required this.dnsServiceIp,
    required this.dockerBridgeCidr,
    required this.loadBalancerSku,
    required this.networkPlugin,
    required this.networkPolicy,
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
      'podCidr': podCidr,
      'serviceCidr': serviceCidr,
    };
  }

  factory GetKubernetesClusterNetworkProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNetworkProfile(
      dnsServiceIp: (map['dnsServiceIp'] as String).input(),
      dockerBridgeCidr: (map['dockerBridgeCidr'] as String).input(),
      loadBalancerSku: (map['loadBalancerSku'] as String).input(),
      networkPlugin: (map['networkPlugin'] as String).input(),
      networkPolicy: (map['networkPolicy'] as String).input(),
      podCidr: (map['podCidr'] as String).input(),
      serviceCidr: (map['serviceCidr'] as String).input(),
    );
  }
}

