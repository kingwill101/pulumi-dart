// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigNodeConfigIpAllocationPolicy {
  /// The IP address range used to allocate IP addresses to pods in the cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both.
  final pulumi.Input<String> clusterIpv4CidrBlock;
  /// The name of the cluster's secondary range used to allocate IP addresses to pods. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  final pulumi.Input<String> clusterSecondaryRangeName;
  /// The IP address range used to allocate IP addresses in this cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both.
  final pulumi.Input<String> servicesIpv4CidrBlock;
  /// The name of the services' secondary range used to allocate IP addresses to the cluster. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  final pulumi.Input<String> servicesSecondaryRangeName;
  /// Whether or not to enable Alias IPs in the GKE cluster. If true, a VPC-native cluster is created. Defaults to true if the ip_allocation_policy block is present in config. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  final pulumi.Input<bool> useIpAliases;

  /// Creates a new [GetEnvironmentConfigNodeConfigIpAllocationPolicy].
  /// [clusterIpv4CidrBlock] The IP address range used to allocate IP addresses to pods in the cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both.
  /// [clusterSecondaryRangeName] The name of the cluster's secondary range used to allocate IP addresses to pods. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  /// [servicesIpv4CidrBlock] The IP address range used to allocate IP addresses in this cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both.
  /// [servicesSecondaryRangeName] The name of the services' secondary range used to allocate IP addresses to the cluster. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  /// [useIpAliases] Whether or not to enable Alias IPs in the GKE cluster. If true, a VPC-native cluster is created. Defaults to true if the ip_allocation_policy block is present in config. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  GetEnvironmentConfigNodeConfigIpAllocationPolicy({
    required this.clusterIpv4CidrBlock,
    required this.clusterSecondaryRangeName,
    required this.servicesIpv4CidrBlock,
    required this.servicesSecondaryRangeName,
    required this.useIpAliases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIpv4CidrBlock': clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': clusterSecondaryRangeName,
      'servicesIpv4CidrBlock': servicesIpv4CidrBlock,
      'servicesSecondaryRangeName': servicesSecondaryRangeName,
      'useIpAliases': useIpAliases,
    };
  }

  factory GetEnvironmentConfigNodeConfigIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigNodeConfigIpAllocationPolicy(
      clusterIpv4CidrBlock: pulumi.Input.fromValue(map['clusterIpv4CidrBlock'] as String),
      clusterSecondaryRangeName: pulumi.Input.fromValue(map['clusterSecondaryRangeName'] as String),
      servicesIpv4CidrBlock: pulumi.Input.fromValue(map['servicesIpv4CidrBlock'] as String),
      servicesSecondaryRangeName: pulumi.Input.fromValue(map['servicesSecondaryRangeName'] as String),
      useIpAliases: pulumi.Input.fromValue(map['useIpAliases'] as bool),
    );
  }
}

