// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworking {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// blocks. Only a single block is supported. This field cannot be changed
  /// after creation.
  final pulumi.Input<List<String>> clusterIpv4CidrBlocks;
  /// If specified, dual stack mode is enabled and all pods in the cluster are
  /// assigned an IPv6 address from these blocks alongside from an IPv4
  /// address. Only a single block is supported. This field cannot be changed
  /// after creation.
  final pulumi.Input<List<String>>? clusterIpv6CidrBlocks;
  /// (Output)
  /// IP addressing type of this cluster i.e. SINGLESTACK_V4 vs DUALSTACK_V4_V6.
  final pulumi.Input<String>? networkType;
  /// All services in the cluster are assigned an RFC1918 IPv4 address from these
  /// blocks. Only a single block is supported. This field cannot be changed
  /// after creation.
  final pulumi.Input<List<String>> servicesIpv4CidrBlocks;
  /// If specified, dual stack mode is enabled and all services in the cluster are
  /// assigned an IPv6 address from these blocks alongside from an IPv4
  /// address. Only a single block is supported. This field cannot be changed
  /// after creation.
  final pulumi.Input<List<String>>? servicesIpv6CidrBlocks;

  /// Creates a new [ClusterNetworking].
  /// [clusterIpv4CidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// [clusterIpv6CidrBlocks] If specified, dual stack mode is enabled and all pods in the cluster are
  /// [networkType] (Output)
  /// [servicesIpv4CidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these
  /// [servicesIpv6CidrBlocks] If specified, dual stack mode is enabled and all services in the cluster are
  ClusterNetworking({
    required this.clusterIpv4CidrBlocks,
    this.clusterIpv6CidrBlocks,
    this.networkType,
    required this.servicesIpv4CidrBlocks,
    this.servicesIpv6CidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIpv4CidrBlocks': clusterIpv4CidrBlocks,
      'clusterIpv6CidrBlocks': ?clusterIpv6CidrBlocks,
      'networkType': ?networkType,
      'servicesIpv4CidrBlocks': servicesIpv4CidrBlocks,
      'servicesIpv6CidrBlocks': ?servicesIpv6CidrBlocks,
    };
  }

  factory ClusterNetworking.fromMap(Map<String, dynamic> map) {
    return ClusterNetworking(
      clusterIpv4CidrBlocks: ((map['clusterIpv4CidrBlocks'] as List).cast<String>()).input(),
      clusterIpv6CidrBlocks: map['clusterIpv6CidrBlocks'] == null ? null : ((map['clusterIpv6CidrBlocks'] as List).cast<String>()).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      servicesIpv4CidrBlocks: ((map['servicesIpv4CidrBlocks'] as List).cast<String>()).input(),
      servicesIpv6CidrBlocks: map['servicesIpv6CidrBlocks'] == null ? null : ((map['servicesIpv6CidrBlocks'] as List).cast<String>()).input(),
    );
  }
}

