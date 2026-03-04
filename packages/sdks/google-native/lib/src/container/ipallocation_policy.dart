// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipallocation_policy_ipv6_access_type.dart';
import 'ipallocation_policy_stack_type.dart';
import 'pod_cidroverprovision_config.dart';

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicy {
  /// This field is deprecated, use cluster_ipv4_cidr_block.
  final pulumi.Input<String>? clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String>? clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  final pulumi.Input<String>? clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  final pulumi.Input<bool>? createSubnetwork;

  /// The ipv6 access type (internal or external) when create_subnetwork is true
  final pulumi.Input<IPAllocationPolicyIpv6AccessType>? ipv6AccessType;

  /// This field is deprecated, use node_ipv4_cidr_block.
  final pulumi.Input<String>? nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String>? nodeIpv4CidrBlock;

  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final pulumi.Input<PodCIDROverprovisionConfig>? podCidrOverprovisionConfig;

  /// This field is deprecated, use services_ipv4_cidr_block.
  final pulumi.Input<String>? servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String>? servicesIpv4CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  final pulumi.Input<String>? servicesSecondaryRangeName;

  /// The IP stack type of the cluster
  final pulumi.Input<IPAllocationPolicyStackType>? stackType;

  /// A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  final pulumi.Input<String>? subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final pulumi.Input<String>? tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final pulumi.Input<bool>? useIpAliases;

  /// Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final pulumi.Input<bool>? useRoutes;

  /// Creates a new [IPAllocationPolicy].
  /// [clusterIpv4Cidr] This field is deprecated, use cluster_ipv4_cidr_block.
  /// [clusterIpv4CidrBlock] The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [clusterSecondaryRangeName] The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  /// [createSubnetwork] Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  /// [ipv6AccessType] The ipv6 access type (internal or external) when create_subnetwork is true
  /// [nodeIpv4Cidr] This field is deprecated, use node_ipv4_cidr_block.
  /// [nodeIpv4CidrBlock] The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [servicesIpv4Cidr] This field is deprecated, use services_ipv4_cidr_block.
  /// [servicesIpv4CidrBlock] The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [servicesSecondaryRangeName] The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.
  /// [stackType] The IP stack type of the cluster
  /// [subnetworkName] A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  /// [tpuIpv4CidrBlock] The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [useIpAliases] Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  /// [useRoutes] Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  IPAllocationPolicy({
    this.clusterIpv4Cidr,
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.createSubnetwork,
    this.ipv6AccessType,
    this.nodeIpv4Cidr,
    this.nodeIpv4CidrBlock,
    this.podCidrOverprovisionConfig,
    this.servicesIpv4Cidr,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.stackType,
    this.subnetworkName,
    this.tpuIpv4CidrBlock,
    this.useIpAliases,
    this.useRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'clusterIpv4CidrBlock': ?clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': ?clusterSecondaryRangeName,
      'createSubnetwork': ?createSubnetwork,
      'ipv6AccessType':
          ?pulumi.Input.mapOptionalInputValue<
            IPAllocationPolicyIpv6AccessType,
            String
          >(ipv6AccessType, (value) => value.wireValue),
      'nodeIpv4Cidr': ?nodeIpv4Cidr,
      'nodeIpv4CidrBlock': ?nodeIpv4CidrBlock,
      'podCidrOverprovisionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PodCIDROverprovisionConfig,
            Map<String, dynamic>
          >(podCidrOverprovisionConfig, (value) => value.toMap()),
      'servicesIpv4Cidr': ?servicesIpv4Cidr,
      'servicesIpv4CidrBlock': ?servicesIpv4CidrBlock,
      'servicesSecondaryRangeName': ?servicesSecondaryRangeName,
      'stackType':
          ?pulumi.Input.mapOptionalInputValue<
            IPAllocationPolicyStackType,
            String
          >(stackType, (value) => value.wireValue),
      'subnetworkName': ?subnetworkName,
      'tpuIpv4CidrBlock': ?tpuIpv4CidrBlock,
      'useIpAliases': ?useIpAliases,
      'useRoutes': ?useRoutes,
    };
  }

  factory IPAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return IPAllocationPolicy(
      clusterIpv4Cidr: (() {
        final guardedValue = map['clusterIpv4Cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      createSubnetwork: (() {
        final guardedValue = map['createSubnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipv6AccessType: (() {
        final guardedValue = map['ipv6AccessType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IPAllocationPolicyIpv6AccessType.fromValue(guardedValue as String),
        );
      })(),
      nodeIpv4Cidr: (() {
        final guardedValue = map['nodeIpv4Cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeIpv4CidrBlock: (() {
        final guardedValue = map['nodeIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podCidrOverprovisionConfig: (() {
        final guardedValue = map['podCidrOverprovisionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodCIDROverprovisionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servicesIpv4Cidr: (() {
        final guardedValue = map['servicesIpv4Cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
        return pulumi.Input.fromValue(
          IPAllocationPolicyStackType.fromValue(guardedValue as String),
        );
      })(),
      subnetworkName: (() {
        final guardedValue = map['subnetworkName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tpuIpv4CidrBlock: (() {
        final guardedValue = map['tpuIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      useIpAliases: (() {
        final guardedValue = map['useIpAliases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      useRoutes: (() {
        final guardedValue = map['useRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
