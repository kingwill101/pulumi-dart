// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_network_interface_access_config.dart';
import 'get_instance_network_interface_alias_ip_range.dart';
import 'get_instance_network_interface_alias_ipv6_range.dart';
import 'get_instance_network_interface_ipv6_access_config.dart';

class GetInstanceNetworkInterface {
  /// Access configurations, i.e. IPs via which this
  /// instance can be accessed via the Internet. Structure documented below.
  final pulumi.Input<List<GetInstanceNetworkInterfaceAccessConfig>> accessConfigs;
  /// An array of alias IP ranges for this network interface. Structure documented below.
  final pulumi.Input<List<GetInstanceNetworkInterfaceAliasIpRange>> aliasIpRanges;
  /// An array of IPv6 alias IP ranges for this network interface.
  final pulumi.Input<List<GetInstanceNetworkInterfaceAliasIpv6Range>> aliasIpv6Ranges;
  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final pulumi.Input<String> igmpQuery;
  /// The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int> internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final pulumi.Input<List<GetInstanceNetworkInterfaceIpv6AccessConfig>> ipv6AccessConfigs;
  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final pulumi.Input<String> ipv6AccessType;
  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final pulumi.Input<String> ipv6Address;
  /// MAC address assigned to this network interface.
  final pulumi.Input<String> macAddress;
  /// The name of the instance. One of `name` or `selfLink` must be provided.
  final pulumi.Input<String> name;
  /// The name or selfLink of the network attached to this interface.
  final pulumi.Input<String> network;
  /// The URL of the network attachment to this interface.
  final pulumi.Input<String> networkAttachment;
  /// The internal ip address of the instance, either manually or dynamically assigned.
  final pulumi.Input<String> networkIp;
  /// The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, IRDMA and IDPF
  final pulumi.Input<String> nicType;
  /// Name of the parent network interface of a dynamic network interface.
  final pulumi.Input<String> parentNicName;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final pulumi.Input<int> queueCount;
  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String> securityPolicy;
  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<String> stackType;
  /// The name or selfLink of the subnetwork attached to this interface.
  final pulumi.Input<String> subnetwork;
  /// The project in which the subnetwork belongs.
  final pulumi.Input<String> subnetworkProject;
  /// VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.
  final pulumi.Input<int> vlan;

  /// Creates a new [GetInstanceNetworkInterface].
  /// [accessConfigs] Access configurations, i.e. IPs via which this
  /// [aliasIpRanges] An array of alias IP ranges for this network interface. Structure documented below.
  /// [aliasIpv6Ranges] An array of IPv6 alias IP ranges for this network interface.
  /// [igmpQuery] Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  /// [ipv6AccessType] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  /// [ipv6Address] An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [macAddress] MAC address assigned to this network interface.
  /// [name] The name of the instance. One of `name` or `selfLink` must be provided.
  /// [network] The name or selfLink of the network attached to this interface.
  /// [networkAttachment] The URL of the network attachment to this interface.
  /// [networkIp] The internal ip address of the instance, either manually or dynamically assigned.
  /// [nicType] The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, IRDMA and IDPF
  /// [parentNicName] Name of the parent network interface of a dynamic network interface.
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  /// [stackType] The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// [subnetwork] The name or selfLink of the subnetwork attached to this interface.
  /// [subnetworkProject] The project in which the subnetwork belongs.
  /// [vlan] VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.
  const GetInstanceNetworkInterface({
    required this.accessConfigs,
    required this.aliasIpRanges,
    required this.aliasIpv6Ranges,
    required this.igmpQuery,
    required this.internalIpv6PrefixLength,
    required this.ipv6AccessConfigs,
    required this.ipv6AccessType,
    required this.ipv6Address,
    required this.macAddress,
    required this.name,
    required this.network,
    required this.networkAttachment,
    required this.networkIp,
    required this.nicType,
    required this.parentNicName,
    required this.queueCount,
    required this.securityPolicy,
    required this.stackType,
    required this.subnetwork,
    required this.subnetworkProject,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': pulumi.Input.mapInputValue<List<GetInstanceNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<GetInstanceNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': pulumi.Input.mapInputValue<List<GetInstanceNetworkInterfaceAliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<GetInstanceNetworkInterfaceAliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpv6Ranges': pulumi.Input.mapInputValue<List<GetInstanceNetworkInterfaceAliasIpv6Range>, List<Map<String, dynamic>>>(aliasIpv6Ranges, (value) => pulumi.Input.encodeList<GetInstanceNetworkInterfaceAliasIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'igmpQuery': igmpQuery,
      'internalIpv6PrefixLength': internalIpv6PrefixLength,
      'ipv6AccessConfigs': pulumi.Input.mapInputValue<List<GetInstanceNetworkInterfaceIpv6AccessConfig>, List<Map<String, dynamic>>>(ipv6AccessConfigs, (value) => pulumi.Input.encodeList<GetInstanceNetworkInterfaceIpv6AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6AccessType': ipv6AccessType,
      'ipv6Address': ipv6Address,
      'macAddress': macAddress,
      'name': name,
      'network': network,
      'networkAttachment': networkAttachment,
      'networkIp': networkIp,
      'nicType': nicType,
      'parentNicName': parentNicName,
      'queueCount': queueCount,
      'securityPolicy': securityPolicy,
      'stackType': stackType,
      'subnetwork': subnetwork,
      'subnetworkProject': subnetworkProject,
      'vlan': vlan,
    };
  }

  factory GetInstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkInterface(
      accessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceNetworkInterfaceAccessConfig>(map['accessConfigs']!, (value) => GetInstanceNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      aliasIpRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceNetworkInterfaceAliasIpRange>(map['aliasIpRanges']!, (value) => GetInstanceNetworkInterfaceAliasIpRange.fromMap((value as Map).cast<String, dynamic>()))),
      aliasIpv6Ranges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceNetworkInterfaceAliasIpv6Range>(map['aliasIpv6Ranges']!, (value) => GetInstanceNetworkInterfaceAliasIpv6Range.fromMap((value as Map).cast<String, dynamic>()))),
      igmpQuery: pulumi.Input.fromValue(map['igmpQuery'] as String),
      internalIpv6PrefixLength: pulumi.Input.fromValue(map['internalIpv6PrefixLength'] as int),
      ipv6AccessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceNetworkInterfaceIpv6AccessConfig>(map['ipv6AccessConfigs']!, (value) => GetInstanceNetworkInterfaceIpv6AccessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ipv6AccessType: pulumi.Input.fromValue(map['ipv6AccessType'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
      networkIp: pulumi.Input.fromValue(map['networkIp'] as String),
      nicType: pulumi.Input.fromValue(map['nicType'] as String),
      parentNicName: pulumi.Input.fromValue(map['parentNicName'] as String),
      queueCount: pulumi.Input.fromValue(map['queueCount'] as int),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
      stackType: pulumi.Input.fromValue(map['stackType'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      subnetworkProject: pulumi.Input.fromValue(map['subnetworkProject'] as String),
      vlan: pulumi.Input.fromValue(map['vlan'] as int),
    );
  }
}
