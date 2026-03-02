// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_network_profile_advanced_networking.dart';
import 'kubernetes_cluster_network_profile_load_balancer_profile.dart';
import 'kubernetes_cluster_network_profile_nat_gateway_profile.dart';

class KubernetesClusterNetworkProfile {
  /// An `advanced_networking` block as defined below. This can only be specified when `network_plugin` is set to `azure` and `network_data_plane` is set to `cilium`.
  final pulumi.Input<KubernetesClusterNetworkProfileAdvancedNetworking>? advancedNetworking;
  /// IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created.
  final pulumi.Input<String>? dnsServiceIp;
  /// Specifies a list of IP versions the Kubernetes Cluster will use to assign IP addresses to its nodes and pods. Possible values are `IPv4` and/or `IPv6`. `IPv4` must always be specified. Changing this forces a new resource to be created.
  ///
  /// ->**Note:** To configure dual-stack networking `ip_versions` should be set to `["IPv4", "IPv6"]`.
  ///
  /// ->**Note:** Dual-stack networking requires that the Preview Feature `Microsoft.ContainerService/AKS-EnableDualStack` is enabled and the Resource Provider is re-registered, see [the documentation](https://docs.microsoft.com/azure/aks/configure-kubenet-dual-stack?tabs=azure-cli%2Ckubectl#register-the-aks-enabledualstack-preview-feature) for more information.
  final pulumi.Input<List<String>>? ipVersions;
  /// A `load_balancer_profile` block as defined below. This can only be specified when `load_balancer_sku` is set to `standard`. Changing this forces a new resource to be created.
  final pulumi.Input<KubernetesClusterNetworkProfileLoadBalancerProfile>? loadBalancerProfile;
  /// Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are `basic` and `standard`. Defaults to `standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadBalancerSku;
  /// A `nat_gateway_profile` block as defined below. This can only be specified when `load_balancer_sku` is set to `standard` and `outbound_type` is set to `managedNATGateway` or `userAssignedNATGateway`. Changing this forces a new resource to be created.
  final pulumi.Input<KubernetesClusterNetworkProfileNatGatewayProfile>? natGatewayProfile;
  /// Specifies the data plane used for building the Kubernetes network. Possible values are `azure` and `cilium`. Defaults to `azure`. Disabling this forces a new resource to be created.
  ///
  /// > **Note:** When `network_data_plane` is set to `cilium`, the `network_plugin` field can only be set to `azure`.
  ///
  /// > **Note:** When `network_data_plane` is set to `cilium`, one of either `network_plugin_mode = "overlay"` or `pod_subnet_id` must be specified.
  ///
  /// > **Note:** Upgrading `network_data_plane` from `azure` to `cilium` is supported and will perform an in-place upgrade by reimaging all nodes in the cluster. Changing from other values will force a new resource to be created. For more information on upgrading to Azure CNI Powered by Cilium see the [product documentation](https://learn.microsoft.com/azure/aks/upgrade-azure-cni).
  final pulumi.Input<String>? networkDataPlane;
  /// Network mode to be used with Azure CNI. Possible values are `bridge` and `transparent`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `network_mode` can only be set to `bridge` for existing Kubernetes Clusters and cannot be used to provision new Clusters - this will be removed by Azure in the future.
  ///
  /// > **Note:** This property can only be set when `network_plugin` is set to `azure`.
  final pulumi.Input<String>? networkMode;
  /// Network plugin to use for networking. Currently supported values are `azure`, `kubenet` and `none`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When `network_plugin` is set to `azure` - the `pod_cidr` field must not be set, unless specifying `network_plugin_mode` to `overlay`.
  final pulumi.Input<String> networkPlugin;
  /// Specifies the network plugin mode used for building the Kubernetes network. Possible value is `overlay`.
  ///
  /// > **Note:** When `network_plugin_mode` is set to `overlay`, the `network_plugin` field can only be set to `azure`. When upgrading from Azure CNI without overlay, `pod_subnet_id` must be specified.
  final pulumi.Input<String>? networkPluginMode;
  /// Sets up network policy to be used with Azure CNI. [Network policy allows us to control the traffic flow between pods](https://docs.microsoft.com/azure/aks/use-network-policies). Currently supported values are `calico`, `azure` and `cilium`.
  ///
  /// > **Note:** When `network_policy` is set to `azure`, the `network_plugin` field can only be set to `azure`.
  ///
  /// > **Note:** When `network_policy` is set to `cilium`, the `network_data_plane` field must be set to `cilium`.
  ///
  /// > **Note:** Upgrading `network_policy` from `azure` or `calico` to `cilium` is supported and will perform an in-place upgrade. Changing from other values will force a new resource to be created.
  final pulumi.Input<String>? networkPolicy;
  /// The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are `loadBalancer`, `userDefinedRouting`, `managedNATGateway`, `userAssignedNATGateway` and `none`. Defaults to `loadBalancer`.
  ///
  /// > **Note:** For more information on supported `outbound_type` migration paths please see the product [documentation](https://learn.microsoft.com/azure/aks/egress-outboundtype#updating-outboundtype-after-cluster-creation).
  final pulumi.Input<String>? outboundType;
  /// The CIDR to use for pod IP addresses. This field can only be set when `network_plugin` is set to `kubenet` or `network_plugin_mode` is set to `overlay`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? podCidr;
  /// A list of CIDRs to use for pod IP addresses. For single-stack networking a single IPv4 CIDR is expected. For dual-stack networking an IPv4 and IPv6 CIDR are expected. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? podCidrs;
  /// The Network Range used by the Kubernetes service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceCidr;
  /// A list of CIDRs to use for Kubernetes services. For single-stack networking a single IPv4 CIDR is expected. For dual-stack networking an IPv4 and IPv6 CIDR are expected. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This range should not be used by any network element on or connected to this VNet. Service address CIDR must be smaller than /12. `docker_bridge_cidr`, `dns_service_ip` and `service_cidr` should all be empty or all should be set.
  final pulumi.Input<List<String>>? serviceCidrs;

  /// Creates a new [KubernetesClusterNetworkProfile].
  /// [advancedNetworking] An `advanced_networking` block as defined below. This can only be specified when `network_plugin` is set to `azure` and `network_data_plane` is set to `cilium`.
  /// [dnsServiceIp] IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created.
  /// [ipVersions] Specifies a list of IP versions the Kubernetes Cluster will use to assign IP addresses to its nodes and pods. Possible values are `IPv4` and/or `IPv6`. `IPv4` must always be specified. Changing this forces a new resource to be created.
  /// [loadBalancerProfile] A `load_balancer_profile` block as defined below. This can only be specified when `load_balancer_sku` is set to `standard`. Changing this forces a new resource to be created.
  /// [loadBalancerSku] Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are `basic` and `standard`. Defaults to `standard`. Changing this forces a new resource to be created.
  /// [natGatewayProfile] A `nat_gateway_profile` block as defined below. This can only be specified when `load_balancer_sku` is set to `standard` and `outbound_type` is set to `managedNATGateway` or `userAssignedNATGateway`. Changing this forces a new resource to be created.
  /// [networkDataPlane] Specifies the data plane used for building the Kubernetes network. Possible values are `azure` and `cilium`. Defaults to `azure`. Disabling this forces a new resource to be created.
  /// [networkMode] Network mode to be used with Azure CNI. Possible values are `bridge` and `transparent`. Changing this forces a new resource to be created.
  /// [networkPlugin] Network plugin to use for networking. Currently supported values are `azure`, `kubenet` and `none`. Changing this forces a new resource to be created.
  /// [networkPluginMode] Specifies the network plugin mode used for building the Kubernetes network. Possible value is `overlay`.
  /// [networkPolicy] Sets up network policy to be used with Azure CNI. [Network policy allows us to control the traffic flow between pods](https://docs.microsoft.com/azure/aks/use-network-policies). Currently supported values are `calico`, `azure` and `cilium`.
  /// [outboundType] The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are `loadBalancer`, `userDefinedRouting`, `managedNATGateway`, `userAssignedNATGateway` and `none`. Defaults to `loadBalancer`.
  /// [podCidr] The CIDR to use for pod IP addresses. This field can only be set when `network_plugin` is set to `kubenet` or `network_plugin_mode` is set to `overlay`. Changing this forces a new resource to be created.
  /// [podCidrs] A list of CIDRs to use for pod IP addresses. For single-stack networking a single IPv4 CIDR is expected. For dual-stack networking an IPv4 and IPv6 CIDR are expected. Changing this forces a new resource to be created.
  /// [serviceCidr] The Network Range used by the Kubernetes service. Changing this forces a new resource to be created.
  /// [serviceCidrs] A list of CIDRs to use for Kubernetes services. For single-stack networking a single IPv4 CIDR is expected. For dual-stack networking an IPv4 and IPv6 CIDR are expected. Changing this forces a new resource to be created.
  KubernetesClusterNetworkProfile({
    this.advancedNetworking,
    this.dnsServiceIp,
    this.ipVersions,
    this.loadBalancerProfile,
    this.loadBalancerSku,
    this.natGatewayProfile,
    this.networkDataPlane,
    this.networkMode,
    required this.networkPlugin,
    this.networkPluginMode,
    this.networkPolicy,
    this.outboundType,
    this.podCidr,
    this.podCidrs,
    this.serviceCidr,
    this.serviceCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNetworkProfileAdvancedNetworking, Map<String, dynamic>>(advancedNetworking, (value) => value.toMap()),
      'dnsServiceIp': ?dnsServiceIp,
      'ipVersions': ?ipVersions,
      'loadBalancerProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNetworkProfileLoadBalancerProfile, Map<String, dynamic>>(loadBalancerProfile, (value) => value.toMap()),
      'loadBalancerSku': ?loadBalancerSku,
      'natGatewayProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNetworkProfileNatGatewayProfile, Map<String, dynamic>>(natGatewayProfile, (value) => value.toMap()),
      'networkDataPlane': ?networkDataPlane,
      'networkMode': ?networkMode,
      'networkPlugin': networkPlugin,
      'networkPluginMode': ?networkPluginMode,
      'networkPolicy': ?networkPolicy,
      'outboundType': ?outboundType,
      'podCidr': ?podCidr,
      'podCidrs': ?podCidrs,
      'serviceCidr': ?serviceCidr,
      'serviceCidrs': ?serviceCidrs,
    };
  }

  factory KubernetesClusterNetworkProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNetworkProfile(
      advancedNetworking: map['advancedNetworking'] == null ? null : (KubernetesClusterNetworkProfileAdvancedNetworking.fromMap((map['advancedNetworking'] as Map).cast<String, dynamic>())).input(),
      dnsServiceIp: map['dnsServiceIp'] == null ? null : (map['dnsServiceIp'] as String).input(),
      ipVersions: map['ipVersions'] == null ? null : ((map['ipVersions'] as List).cast<String>()).input(),
      loadBalancerProfile: map['loadBalancerProfile'] == null ? null : (KubernetesClusterNetworkProfileLoadBalancerProfile.fromMap((map['loadBalancerProfile'] as Map).cast<String, dynamic>())).input(),
      loadBalancerSku: map['loadBalancerSku'] == null ? null : (map['loadBalancerSku'] as String).input(),
      natGatewayProfile: map['natGatewayProfile'] == null ? null : (KubernetesClusterNetworkProfileNatGatewayProfile.fromMap((map['natGatewayProfile'] as Map).cast<String, dynamic>())).input(),
      networkDataPlane: map['networkDataPlane'] == null ? null : (map['networkDataPlane'] as String).input(),
      networkMode: map['networkMode'] == null ? null : (map['networkMode'] as String).input(),
      networkPlugin: (map['networkPlugin'] as String).input(),
      networkPluginMode: map['networkPluginMode'] == null ? null : (map['networkPluginMode'] as String).input(),
      networkPolicy: map['networkPolicy'] == null ? null : (map['networkPolicy'] as String).input(),
      outboundType: map['outboundType'] == null ? null : (map['outboundType'] as String).input(),
      podCidr: map['podCidr'] == null ? null : (map['podCidr'] as String).input(),
      podCidrs: map['podCidrs'] == null ? null : ((map['podCidrs'] as List).cast<String>()).input(),
      serviceCidr: map['serviceCidr'] == null ? null : (map['serviceCidr'] as String).input(),
      serviceCidrs: map['serviceCidrs'] == null ? null : ((map['serviceCidrs'] as List).cast<String>()).input(),
    );
  }
}

