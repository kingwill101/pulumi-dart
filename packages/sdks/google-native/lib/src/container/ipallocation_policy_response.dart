// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_pod_ranges_config_response.dart';
import 'pod_cidroverprovision_config_response.dart';

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicyResponse {
  /// [Output only] The additional pod ranges that are added to the cluster. These pod ranges can be used by new node pools to allocate pod IPs automatically. Once the range is removed it will not show up in IPAllocationPolicy.
  final pulumi.Input<AdditionalPodRangesConfigResponse>
  additionalPodRangesConfig;

  /// This field is deprecated, use cluster_ipv4_cidr_block.
  final pulumi.Input<String> clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String> clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  final pulumi.Input<String> clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  final pulumi.Input<bool> createSubnetwork;

  /// [Output only] The utilization of the cluster default IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  final pulumi.Input<double> defaultPodIpv4RangeUtilization;

  /// The ipv6 access type (internal or external) when create_subnetwork is true
  final pulumi.Input<String> ipv6AccessType;

  /// This field is deprecated, use node_ipv4_cidr_block.
  final pulumi.Input<String> nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String> nodeIpv4CidrBlock;

  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final pulumi.Input<PodCIDROverprovisionConfigResponse>
  podCidrOverprovisionConfig;

  /// This field is deprecated, use services_ipv4_cidr_block.
  final pulumi.Input<String> servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String> servicesIpv4CidrBlock;

  /// [Output only] The services IPv6 CIDR block for the cluster.
  final pulumi.Input<String> servicesIpv6CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  final pulumi.Input<String> servicesSecondaryRangeName;

  /// The IP stack type of the cluster
  final pulumi.Input<String> stackType;

  /// [Output only] The subnet's IPv6 CIDR block used by nodes and pods.
  final pulumi.Input<String> subnetIpv6CidrBlock;

  /// A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  final pulumi.Input<String> subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String> tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final pulumi.Input<bool> useIpAliases;

  /// Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final pulumi.Input<bool> useRoutes;

  /// Creates a new [IPAllocationPolicyResponse].
  /// [additionalPodRangesConfig] [Output only] The additional pod ranges that are added to the cluster. These pod ranges can be used by new node pools to allocate pod IPs automatically. Once the range is removed it will not show up in IPAllocationPolicy.
  /// [clusterIpv4Cidr] This field is deprecated, use cluster_ipv4_cidr_block.
  /// [clusterIpv4CidrBlock] The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [clusterSecondaryRangeName] The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  /// [createSubnetwork] Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  /// [defaultPodIpv4RangeUtilization] [Output only] The utilization of the cluster default IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  /// [ipv6AccessType] The ipv6 access type (internal or external) when create_subnetwork is true
  /// [nodeIpv4Cidr] This field is deprecated, use node_ipv4_cidr_block.
  /// [nodeIpv4CidrBlock] The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [servicesIpv4Cidr] This field is deprecated, use services_ipv4_cidr_block.
  /// [servicesIpv4CidrBlock] The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [servicesIpv6CidrBlock] [Output only] The services IPv6 CIDR block for the cluster.
  /// [servicesSecondaryRangeName] The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  /// [stackType] The IP stack type of the cluster
  /// [subnetIpv6CidrBlock] [Output only] The subnet's IPv6 CIDR block used by nodes and pods.
  /// [subnetworkName] A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  /// [tpuIpv4CidrBlock] The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [useIpAliases] Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  /// [useRoutes] Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  IPAllocationPolicyResponse({
    required this.additionalPodRangesConfig,
    required this.clusterIpv4Cidr,
    required this.clusterIpv4CidrBlock,
    required this.clusterSecondaryRangeName,
    required this.createSubnetwork,
    required this.defaultPodIpv4RangeUtilization,
    required this.ipv6AccessType,
    required this.nodeIpv4Cidr,
    required this.nodeIpv4CidrBlock,
    required this.podCidrOverprovisionConfig,
    required this.servicesIpv4Cidr,
    required this.servicesIpv4CidrBlock,
    required this.servicesIpv6CidrBlock,
    required this.servicesSecondaryRangeName,
    required this.stackType,
    required this.subnetIpv6CidrBlock,
    required this.subnetworkName,
    required this.tpuIpv4CidrBlock,
    required this.useIpAliases,
    required this.useRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPodRangesConfig':
          pulumi.Input.mapInputValue<
            AdditionalPodRangesConfigResponse,
            Map<String, dynamic>
          >(additionalPodRangesConfig, (value) => value.toMap()),
      'clusterIpv4Cidr': clusterIpv4Cidr,
      'clusterIpv4CidrBlock': clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': clusterSecondaryRangeName,
      'createSubnetwork': createSubnetwork,
      'defaultPodIpv4RangeUtilization': defaultPodIpv4RangeUtilization,
      'ipv6AccessType': ipv6AccessType,
      'nodeIpv4Cidr': nodeIpv4Cidr,
      'nodeIpv4CidrBlock': nodeIpv4CidrBlock,
      'podCidrOverprovisionConfig':
          pulumi.Input.mapInputValue<
            PodCIDROverprovisionConfigResponse,
            Map<String, dynamic>
          >(podCidrOverprovisionConfig, (value) => value.toMap()),
      'servicesIpv4Cidr': servicesIpv4Cidr,
      'servicesIpv4CidrBlock': servicesIpv4CidrBlock,
      'servicesIpv6CidrBlock': servicesIpv6CidrBlock,
      'servicesSecondaryRangeName': servicesSecondaryRangeName,
      'stackType': stackType,
      'subnetIpv6CidrBlock': subnetIpv6CidrBlock,
      'subnetworkName': subnetworkName,
      'tpuIpv4CidrBlock': tpuIpv4CidrBlock,
      'useIpAliases': useIpAliases,
      'useRoutes': useRoutes,
    };
  }

  factory IPAllocationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return IPAllocationPolicyResponse(
      additionalPodRangesConfig: pulumi.Input.fromValue(
        AdditionalPodRangesConfigResponse.fromMap(
          (map['additionalPodRangesConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      clusterIpv4Cidr: pulumi.Input.fromValue(map['clusterIpv4Cidr'] as String),
      clusterIpv4CidrBlock: pulumi.Input.fromValue(
        map['clusterIpv4CidrBlock'] as String,
      ),
      clusterSecondaryRangeName: pulumi.Input.fromValue(
        map['clusterSecondaryRangeName'] as String,
      ),
      createSubnetwork: pulumi.Input.fromValue(map['createSubnetwork'] as bool),
      defaultPodIpv4RangeUtilization: pulumi.Input.fromValue(
        map['defaultPodIpv4RangeUtilization'] as double,
      ),
      ipv6AccessType: pulumi.Input.fromValue(map['ipv6AccessType'] as String),
      nodeIpv4Cidr: pulumi.Input.fromValue(map['nodeIpv4Cidr'] as String),
      nodeIpv4CidrBlock: pulumi.Input.fromValue(
        map['nodeIpv4CidrBlock'] as String,
      ),
      podCidrOverprovisionConfig: pulumi.Input.fromValue(
        PodCIDROverprovisionConfigResponse.fromMap(
          (map['podCidrOverprovisionConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      servicesIpv4Cidr: pulumi.Input.fromValue(
        map['servicesIpv4Cidr'] as String,
      ),
      servicesIpv4CidrBlock: pulumi.Input.fromValue(
        map['servicesIpv4CidrBlock'] as String,
      ),
      servicesIpv6CidrBlock: pulumi.Input.fromValue(
        map['servicesIpv6CidrBlock'] as String,
      ),
      servicesSecondaryRangeName: pulumi.Input.fromValue(
        map['servicesSecondaryRangeName'] as String,
      ),
      stackType: pulumi.Input.fromValue(map['stackType'] as String),
      subnetIpv6CidrBlock: pulumi.Input.fromValue(
        map['subnetIpv6CidrBlock'] as String,
      ),
      subnetworkName: pulumi.Input.fromValue(map['subnetworkName'] as String),
      tpuIpv4CidrBlock: pulumi.Input.fromValue(
        map['tpuIpv4CidrBlock'] as String,
      ),
      useIpAliases: pulumi.Input.fromValue(map['useIpAliases'] as bool),
      useRoutes: pulumi.Input.fromValue(map['useRoutes'] as bool),
    );
  }
}
