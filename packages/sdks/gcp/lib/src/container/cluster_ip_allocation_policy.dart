// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_ip_allocation_policy_additional_ip_ranges_config.dart';
import 'cluster_ip_allocation_policy_additional_pod_ranges_config.dart';
import 'cluster_ip_allocation_policy_auto_ipam_config.dart';
import 'cluster_ip_allocation_policy_network_tier_config.dart';
import 'cluster_ip_allocation_policy_pod_cidr_overprovision_config.dart';

class ClusterIpAllocationPolicy {
  /// The configuration for individual additional subnetworks attached to the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterIpAllocationPolicyAdditionalIpRangesConfig>>?
  additionalIpRangesConfigs;

  /// The configuration for additional pod secondary ranges at
  /// the cluster level. Used for Autopilot clusters and Standard clusters with which control of the
  /// secondary Pod IP address assignment to node pools isn't needed. Structure is documented below.
  final pulumi.Input<ClusterIpAllocationPolicyAdditionalPodRangesConfig>?
  additionalPodRangesConfig;

  /// All the information related to Auto IPAM. Structure is documented below
  final pulumi.Input<ClusterIpAllocationPolicyAutoIpamConfig>? autoIpamConfig;

  /// The IP address range for the cluster pod IPs.
  /// Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14)
  /// to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14)
  /// from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to
  /// pick a specific range to use.
  final pulumi.Input<String>? clusterIpv4CidrBlock;

  /// The name of the existing secondary
  /// range in the cluster's subnetwork to use for pod IP addresses. Alternatively,
  /// `cluster_ipv4_cidr_block` can be used to automatically create a GKE-managed one.
  final pulumi.Input<String>? clusterSecondaryRangeName;

  /// Contains network tier information. Structure is documented below
  ///
  /// &lt;a name="nested_auto_ipam_config"&gt;&lt;/a&gt;The auto ipam config supports:
  final pulumi.Input<ClusterIpAllocationPolicyNetworkTierConfig>?
  networkTierConfig;

  /// Configuration for cluster level pod cidr overprovision. Default is disabled=false.
  final pulumi.Input<ClusterIpAllocationPolicyPodCidrOverprovisionConfig>?
  podCidrOverprovisionConfig;

  /// The IP address range of the services IPs in this cluster.
  /// Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14)
  /// to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14)
  /// from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to
  /// pick a specific range to use.
  final pulumi.Input<String>? servicesIpv4CidrBlock;

  /// The name of the existing
  /// secondary range in the cluster's subnetwork to use for service `ClusterIP`s.
  /// Alternatively, `services_ipv4_cidr_block` can be used to automatically create a
  /// GKE-managed one.
  final pulumi.Input<String>? servicesSecondaryRangeName;

  /// The IP Stack Type of the cluster.
  /// Default value is `IPV4`.
  /// Possible values are `IPV4` and `IPV4_IPV6`.
  final pulumi.Input<String>? stackType;

  /// Creates a new [ClusterIpAllocationPolicy].
  /// [additionalIpRangesConfigs] The configuration for individual additional subnetworks attached to the cluster.
  /// [additionalPodRangesConfig] The configuration for additional pod secondary ranges at
  /// [autoIpamConfig] All the information related to Auto IPAM. Structure is documented below
  /// [clusterIpv4CidrBlock] The IP address range for the cluster pod IPs.
  /// [clusterSecondaryRangeName] The name of the existing secondary
  /// [networkTierConfig] Contains network tier information. Structure is documented below
  /// [podCidrOverprovisionConfig] Configuration for cluster level pod cidr overprovision. Default is disabled=false.
  /// [servicesIpv4CidrBlock] The IP address range of the services IPs in this cluster.
  /// [servicesSecondaryRangeName] The name of the existing
  /// [stackType] The IP Stack Type of the cluster.
  ClusterIpAllocationPolicy({
    this.additionalIpRangesConfigs,
    this.additionalPodRangesConfig,
    this.autoIpamConfig,
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.networkTierConfig,
    this.podCidrOverprovisionConfig,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.stackType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalIpRangesConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterIpAllocationPolicyAdditionalIpRangesConfig>,
            List<Map<String, dynamic>>
          >(
            additionalIpRangesConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterIpAllocationPolicyAdditionalIpRangesConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'additionalPodRangesConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterIpAllocationPolicyAdditionalPodRangesConfig,
            Map<String, dynamic>
          >(additionalPodRangesConfig, (value) => value.toMap()),
      'autoIpamConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterIpAllocationPolicyAutoIpamConfig,
            Map<String, dynamic>
          >(autoIpamConfig, (value) => value.toMap()),
      'clusterIpv4CidrBlock': ?clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': ?clusterSecondaryRangeName,
      'networkTierConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterIpAllocationPolicyNetworkTierConfig,
            Map<String, dynamic>
          >(networkTierConfig, (value) => value.toMap()),
      'podCidrOverprovisionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterIpAllocationPolicyPodCidrOverprovisionConfig,
            Map<String, dynamic>
          >(podCidrOverprovisionConfig, (value) => value.toMap()),
      'servicesIpv4CidrBlock': ?servicesIpv4CidrBlock,
      'servicesSecondaryRangeName': ?servicesSecondaryRangeName,
      'stackType': ?stackType,
    };
  }

  factory ClusterIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicy(
      additionalIpRangesConfigs: (() {
        final guardedValue = map['additionalIpRangesConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterIpAllocationPolicyAdditionalIpRangesConfig
          >(
            guardedValue,
            (value) =>
                ClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      additionalPodRangesConfig: (() {
        final guardedValue = map['additionalPodRangesConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoIpamConfig: (() {
        final guardedValue = map['autoIpamConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterIpAllocationPolicyAutoIpamConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterIpv4CidrBlock: (() {
        final guardedValue = map['clusterIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterSecondaryRangeName: (() {
        final guardedValue = map['clusterSecondaryRangeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkTierConfig: (() {
        final guardedValue = map['networkTierConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterIpAllocationPolicyNetworkTierConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      podCidrOverprovisionConfig: (() {
        final guardedValue = map['podCidrOverprovisionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servicesIpv4CidrBlock: (() {
        final guardedValue = map['servicesIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicesSecondaryRangeName: (() {
        final guardedValue = map['servicesSecondaryRangeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackType: (() {
        final guardedValue = map['stackType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
