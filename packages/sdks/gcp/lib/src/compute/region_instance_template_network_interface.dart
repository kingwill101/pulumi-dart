// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_network_interface_access_config.dart';
import 'region_instance_template_network_interface_alias_ip_range.dart';
import 'region_instance_template_network_interface_alias_ipv6_range.dart';
import 'region_instance_template_network_interface_ipv6_access_config.dart';

class RegionInstanceTemplateNetworkInterface {
  /// Access configurations, i.e. IPs via which this
  /// instance can be accessed via the Internet. Omit to ensure that the instance
  /// is not accessible from the Internet (this means that ssh provisioners will
  /// not work unless you are running Terraform can send traffic to the instance's
  /// network (e.g. via tunnel or because it is running on another cloud instance
  /// on that network). This block can be specified once per `networkInterface`. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceAccessConfig>?>? accessConfigs;
  /// An
  /// array of alias IP ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceAliasIpRange>?>? aliasIpRanges;
  /// [Beta] An
  /// array of alias IPv6 ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceAliasIpv6Range>?>? aliasIpv6Ranges;
  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final pulumi.Input<String?>? igmpQuery;
  /// The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int?>? internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface.
  /// Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig
  /// specified, then this instance will have no external IPv6 Internet access. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>?>? ipv6AccessConfigs;
  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final pulumi.Input<String?>? ipv6AccessType;
  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final pulumi.Input<String?>? ipv6Address;
  /// The name of the instance template. If you leave
  /// this blank, Terraform will auto-generate a unique name.
  final pulumi.Input<String?>? name;
  /// The name or selfLink of the network to attach this interface to.
  /// Use `network` attribute for Legacy or Auto subnetted networks and
  /// `subnetwork` for custom subnetted networks.
  final pulumi.Input<String?>? network;
  /// The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final pulumi.Input<String?>? networkAttachment;
  /// The private IP address to assign to the instance. If
  /// empty, the address will be automatically assigned.
  final pulumi.Input<String?>? networkIp;
  /// The type of vNIC to be used on this interface. Possible values: GVNIC, VIRTIO_NET, MRDMA, IRDMA, IDPF.
  final pulumi.Input<String?>? nicType;
  /// Name of the parent network interface of a dynamic network interface.
  final pulumi.Input<String?>? parentNicName;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final pulumi.Input<int?>? queueCount;
  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are IPV4_IPV6, IPV6_ONLY or IPV4_ONLY. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<String?>? stackType;
  /// the name of the subnetwork to attach this interface
  /// to. The subnetwork must exist in the same `region` this instance will be
  /// created in. Either `network` or `subnetwork` must be provided.
  final pulumi.Input<String?>? subnetwork;
  /// The ID of the project in which the subnetwork belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? subnetworkProject;
  /// VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.
  final pulumi.Input<int?>? vlan;

  /// Creates a new [RegionInstanceTemplateNetworkInterface].
  /// [accessConfigs] Access configurations, i.e. IPs via which this
  /// [aliasIpRanges] An
  /// [aliasIpv6Ranges] [Beta] An
  /// [igmpQuery] Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface.
  /// [ipv6AccessType] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  /// [ipv6Address] An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [name] The name of the instance template. If you leave
  /// [network] The name or selfLink of the network to attach this interface to.
  /// [networkAttachment] The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  /// [networkIp] The private IP address to assign to the instance. If
  /// [nicType] The type of vNIC to be used on this interface. Possible values: GVNIC, VIRTIO_NET, MRDMA, IRDMA, IDPF.
  /// [parentNicName] Name of the parent network interface of a dynamic network interface.
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  /// [stackType] The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are IPV4_IPV6, IPV6_ONLY or IPV4_ONLY. If not specified, IPV4_ONLY will be used.
  /// [subnetwork] the name of the subnetwork to attach this interface
  /// [subnetworkProject] The ID of the project in which the subnetwork belongs.
  /// [vlan] VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.
  const RegionInstanceTemplateNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.aliasIpv6Ranges,
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.name,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.parentNicName,
    this.queueCount,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceAliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceAliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpv6Ranges': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceAliasIpv6Range>, List<Map<String, dynamic>>>(aliasIpv6Ranges, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceAliasIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'igmpQuery': ?igmpQuery,
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipv6AccessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>, List<Map<String, dynamic>>>(ipv6AccessConfigs, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6AccessType': ?ipv6AccessType,
      'ipv6Address': ?ipv6Address,
      'name': ?name,
      'network': ?network,
      'networkAttachment': ?networkAttachment,
      'networkIp': ?networkIp,
      'nicType': ?nicType,
      'parentNicName': ?parentNicName,
      'queueCount': ?queueCount,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
      'subnetworkProject': ?subnetworkProject,
      'vlan': ?vlan,
    };
  }

  factory RegionInstanceTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkInterface(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceAccessConfig>(guardedValue, (value) => RegionInstanceTemplateNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aliasIpRanges: (() { final guardedValue = map['aliasIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceAliasIpRange>(guardedValue, (value) => RegionInstanceTemplateNetworkInterfaceAliasIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aliasIpv6Ranges: (() { final guardedValue = map['aliasIpv6Ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceAliasIpv6Range>(guardedValue, (value) => RegionInstanceTemplateNetworkInterfaceAliasIpv6Range.fromMap((value as Map).cast<String, dynamic>()))); })(),
      igmpQuery: (() { final guardedValue = map['igmpQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIpv6PrefixLength: (() { final guardedValue = map['internalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv6AccessConfigs: (() { final guardedValue = map['ipv6AccessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>(guardedValue, (value) => RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkIp: (() { final guardedValue = map['networkIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentNicName: (() { final guardedValue = map['parentNicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueCount: (() { final guardedValue = map['queueCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetworkProject: (() { final guardedValue = map['subnetworkProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
