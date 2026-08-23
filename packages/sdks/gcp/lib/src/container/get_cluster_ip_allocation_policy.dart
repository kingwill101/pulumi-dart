// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_ip_allocation_policy_additional_ip_ranges_config.dart';
import 'get_cluster_ip_allocation_policy_additional_pod_ranges_config.dart';
import 'get_cluster_ip_allocation_policy_auto_ipam_config.dart';
import 'get_cluster_ip_allocation_policy_network_tier_config.dart';
import 'get_cluster_ip_allocation_policy_pod_cidr_overprovision_config.dart';

class GetClusterIpAllocationPolicy {
  /// AdditionalIPRangesConfig is the configuration for individual additional subnetworks attached to the cluster
  final pulumi.Input<List<GetClusterIpAllocationPolicyAdditionalIpRangesConfig>> additionalIpRangesConfigs;
  /// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
  final pulumi.Input<List<GetClusterIpAllocationPolicyAdditionalPodRangesConfig>> additionalPodRangesConfigs;
  /// AutoIpamConfig contains all information related to Auto IPAM.
  final pulumi.Input<List<GetClusterIpAllocationPolicyAutoIpamConfig>> autoIpamConfigs;
  /// The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use.
  final pulumi.Input<String> clusterIpv4CidrBlock;
  /// The name of the existing secondary range in the cluster's subnetwork to use for pod IP addresses. Alternatively, clusterIpv4CidrBlock can be used to automatically create a GKE-managed one.
  final pulumi.Input<String> clusterSecondaryRangeName;
  /// Used to determine the default network tier for external IP addresses on cluster resources, such as node pools and load balancers.
  final pulumi.Input<List<GetClusterIpAllocationPolicyNetworkTierConfig>> networkTierConfigs;
  /// Configuration for cluster level pod cidr overprovision. Default is disabled=false.
  final pulumi.Input<List<GetClusterIpAllocationPolicyPodCidrOverprovisionConfig>> podCidrOverprovisionConfigs;
  /// The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use.
  final pulumi.Input<String> servicesIpv4CidrBlock;
  /// The name of the existing secondary range in the cluster's subnetwork to use for service ClusterIPs. Alternatively, servicesIpv4CidrBlock can be used to automatically create a GKE-managed one.
  final pulumi.Input<String> servicesSecondaryRangeName;
  /// The IP Stack type of the cluster. Choose between IPV4 and IPV4_IPV6. Default type is IPV4 Only if not set
  final pulumi.Input<String> stackType;

  /// Creates a new [GetClusterIpAllocationPolicy].
  /// [additionalIpRangesConfigs] AdditionalIPRangesConfig is the configuration for individual additional subnetworks attached to the cluster
  /// [additionalPodRangesConfigs] AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
  /// [autoIpamConfigs] AutoIpamConfig contains all information related to Auto IPAM.
  /// [clusterIpv4CidrBlock] The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use.
  /// [clusterSecondaryRangeName] The name of the existing secondary range in the cluster's subnetwork to use for pod IP addresses. Alternatively, clusterIpv4CidrBlock can be used to automatically create a GKE-managed one.
  /// [networkTierConfigs] Used to determine the default network tier for external IP addresses on cluster resources, such as node pools and load balancers.
  /// [podCidrOverprovisionConfigs] Configuration for cluster level pod cidr overprovision. Default is disabled=false.
  /// [servicesIpv4CidrBlock] The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use.
  /// [servicesSecondaryRangeName] The name of the existing secondary range in the cluster's subnetwork to use for service ClusterIPs. Alternatively, servicesIpv4CidrBlock can be used to automatically create a GKE-managed one.
  /// [stackType] The IP Stack type of the cluster. Choose between IPV4 and IPV4_IPV6. Default type is IPV4 Only if not set
  const GetClusterIpAllocationPolicy({
    required this.additionalIpRangesConfigs,
    required this.additionalPodRangesConfigs,
    required this.autoIpamConfigs,
    required this.clusterIpv4CidrBlock,
    required this.clusterSecondaryRangeName,
    required this.networkTierConfigs,
    required this.podCidrOverprovisionConfigs,
    required this.servicesIpv4CidrBlock,
    required this.servicesSecondaryRangeName,
    required this.stackType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalIpRangesConfigs': pulumi.Input.mapInputValue<List<GetClusterIpAllocationPolicyAdditionalIpRangesConfig>, List<Map<String, dynamic>>>(additionalIpRangesConfigs, (value) => pulumi.Input.encodeList<GetClusterIpAllocationPolicyAdditionalIpRangesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodRangesConfigs': pulumi.Input.mapInputValue<List<GetClusterIpAllocationPolicyAdditionalPodRangesConfig>, List<Map<String, dynamic>>>(additionalPodRangesConfigs, (value) => pulumi.Input.encodeList<GetClusterIpAllocationPolicyAdditionalPodRangesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoIpamConfigs': pulumi.Input.mapInputValue<List<GetClusterIpAllocationPolicyAutoIpamConfig>, List<Map<String, dynamic>>>(autoIpamConfigs, (value) => pulumi.Input.encodeList<GetClusterIpAllocationPolicyAutoIpamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterIpv4CidrBlock': clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': clusterSecondaryRangeName,
      'networkTierConfigs': pulumi.Input.mapInputValue<List<GetClusterIpAllocationPolicyNetworkTierConfig>, List<Map<String, dynamic>>>(networkTierConfigs, (value) => pulumi.Input.encodeList<GetClusterIpAllocationPolicyNetworkTierConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podCidrOverprovisionConfigs': pulumi.Input.mapInputValue<List<GetClusterIpAllocationPolicyPodCidrOverprovisionConfig>, List<Map<String, dynamic>>>(podCidrOverprovisionConfigs, (value) => pulumi.Input.encodeList<GetClusterIpAllocationPolicyPodCidrOverprovisionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicesIpv4CidrBlock': servicesIpv4CidrBlock,
      'servicesSecondaryRangeName': servicesSecondaryRangeName,
      'stackType': stackType,
    };
  }

  factory GetClusterIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicy(
      additionalIpRangesConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterIpAllocationPolicyAdditionalIpRangesConfig>(map['additionalIpRangesConfigs']!, (value) => GetClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap((value as Map).cast<String, dynamic>()))),
      additionalPodRangesConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterIpAllocationPolicyAdditionalPodRangesConfig>(map['additionalPodRangesConfigs']!, (value) => GetClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap((value as Map).cast<String, dynamic>()))),
      autoIpamConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterIpAllocationPolicyAutoIpamConfig>(map['autoIpamConfigs']!, (value) => GetClusterIpAllocationPolicyAutoIpamConfig.fromMap((value as Map).cast<String, dynamic>()))),
      clusterIpv4CidrBlock: pulumi.Input.fromValue(map['clusterIpv4CidrBlock'] as String),
      clusterSecondaryRangeName: pulumi.Input.fromValue(map['clusterSecondaryRangeName'] as String),
      networkTierConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterIpAllocationPolicyNetworkTierConfig>(map['networkTierConfigs']!, (value) => GetClusterIpAllocationPolicyNetworkTierConfig.fromMap((value as Map).cast<String, dynamic>()))),
      podCidrOverprovisionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterIpAllocationPolicyPodCidrOverprovisionConfig>(map['podCidrOverprovisionConfigs']!, (value) => GetClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      servicesIpv4CidrBlock: pulumi.Input.fromValue(map['servicesIpv4CidrBlock'] as String),
      servicesSecondaryRangeName: pulumi.Input.fromValue(map['servicesSecondaryRangeName'] as String),
      stackType: pulumi.Input.fromValue(map['stackType'] as String),
    );
  }
}
