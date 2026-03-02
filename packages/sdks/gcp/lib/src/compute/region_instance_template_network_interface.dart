// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_network_interface_access_config.dart';
import 'region_instance_template_network_interface_alias_ip_range.dart';
import 'region_instance_template_network_interface_ipv6_access_config.dart';

class RegionInstanceTemplateNetworkInterface {
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceAccessConfig>>? accessConfigs;
  /// An
  /// array of alias IP ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceAliasIpRange>>? aliasIpRanges;
  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final pulumi.Input<String>? igmpQuery;
  /// The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int>? internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface.
  /// Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig
  /// specified, then this instance will have no external IPv6 Internet access. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>>? ipv6AccessConfigs;
  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final pulumi.Input<String>? ipv6AccessType;
  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final pulumi.Input<String>? ipv6Address;
  /// The name of the network_interface.
  final pulumi.Input<String>? name;
  /// The name or self_link of the network to attach this interface to.
  /// Use `network` attribute for Legacy or Auto subnetted networks and
  /// `subnetwork` for custom subnetted networks.
  final pulumi.Input<String>? network;
  /// The private IP address to assign to the instance. If
  /// empty, the address will be automatically assigned.
  final pulumi.Input<String>? networkIp;
  /// The type of vNIC to be used on this interface. Possible values: GVNIC, VIRTIO_NET, MRDMA, IRDMA.
  final pulumi.Input<String>? nicType;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final pulumi.Input<int>? queueCount;
  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are IPV4_IPV6, IPV6_ONLY or IPV4_ONLY. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<String>? stackType;
  /// the name of the subnetwork to attach this interface
  /// to. The subnetwork must exist in the same `region` this instance will be
  /// created in. Either `network` or `subnetwork` must be provided.
  final pulumi.Input<String>? subnetwork;
  /// The ID of the project in which the subnetwork belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? subnetworkProject;

  /// Creates a new [RegionInstanceTemplateNetworkInterface].
  /// [accessConfigs] Optional.
  /// [aliasIpRanges] An
  /// [igmpQuery] Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface.
  /// [ipv6AccessType] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  /// [ipv6Address] An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [name] The name of the network_interface.
  /// [network] The name or self_link of the network to attach this interface to.
  /// [networkIp] The private IP address to assign to the instance. If
  /// [nicType] The type of vNIC to be used on this interface. Possible values: GVNIC, VIRTIO_NET, MRDMA, IRDMA.
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  /// [stackType] The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are IPV4_IPV6, IPV6_ONLY or IPV4_ONLY. If not specified, IPV4_ONLY will be used.
  /// [subnetwork] the name of the subnetwork to attach this interface
  /// [subnetworkProject] The ID of the project in which the subnetwork belongs.
  RegionInstanceTemplateNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.name,
    this.network,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceAliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceAliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'igmpQuery': ?igmpQuery,
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipv6AccessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>, List<Map<String, dynamic>>>(ipv6AccessConfigs, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6AccessType': ?ipv6AccessType,
      'ipv6Address': ?ipv6Address,
      'name': ?name,
      'network': ?network,
      'networkIp': ?networkIp,
      'nicType': ?nicType,
      'queueCount': ?queueCount,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
      'subnetworkProject': ?subnetworkProject,
    };
  }

  factory RegionInstanceTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkInterface(
      accessConfigs: map['accessConfigs'] == null ? null : (pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceAccessConfig>(map['accessConfigs']!, (value) => RegionInstanceTemplateNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aliasIpRanges: map['aliasIpRanges'] == null ? null : (pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceAliasIpRange>(map['aliasIpRanges']!, (value) => RegionInstanceTemplateNetworkInterfaceAliasIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      igmpQuery: map['igmpQuery'] == null ? null : (map['igmpQuery']! as String).input(),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null ? null : (map['internalIpv6PrefixLength']! as int).input(),
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null ? null : (pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>(map['ipv6AccessConfigs']!, (value) => RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6AccessType: map['ipv6AccessType'] == null ? null : (map['ipv6AccessType']! as String).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      networkIp: map['networkIp'] == null ? null : (map['networkIp']! as String).input(),
      nicType: map['nicType'] == null ? null : (map['nicType']! as String).input(),
      queueCount: map['queueCount'] == null ? null : (map['queueCount']! as int).input(),
      stackType: map['stackType'] == null ? null : (map['stackType']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
      subnetworkProject: map['subnetworkProject'] == null ? null : (map['subnetworkProject']! as String).input(),
    );
  }
}

