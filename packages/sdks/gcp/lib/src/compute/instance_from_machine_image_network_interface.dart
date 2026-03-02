// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_network_interface_access_config.dart';
import 'instance_from_machine_image_network_interface_alias_ip_range.dart';
import 'instance_from_machine_image_network_interface_ipv6_access_config.dart';

class InstanceFromMachineImageNetworkInterface {
  /// Access configurations, i.e. IPs via which this instance can be accessed via the Internet.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceAccessConfig>>? accessConfigs;
  /// An array of alias IP ranges for this network interface.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceAliasIpRange>>? aliasIpRanges;
  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final pulumi.Input<String>? igmpQuery;
  /// The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int>? internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig>>? ipv6AccessConfigs;
  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final pulumi.Input<String>? ipv6AccessType;
  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final pulumi.Input<String>? ipv6Address;
  /// MAC address assigned to this network interface.
  final pulumi.Input<String>? macAddress;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name or self_link of the network attached to this interface.
  final pulumi.Input<String>? network;
  /// The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final pulumi.Input<String>? networkAttachment;
  /// The private IP address assigned to the instance.
  final pulumi.Input<String>? networkIp;
  /// The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, and IRDMA
  final pulumi.Input<String>? nicType;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final pulumi.Input<int>? queueCount;
  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String>? securityPolicy;
  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<String>? stackType;
  /// The name or self_link of the subnetwork attached to this interface.
  final pulumi.Input<String>? subnetwork;
  /// The project in which the subnetwork belongs.
  final pulumi.Input<String>? subnetworkProject;

  /// Creates a new [InstanceFromMachineImageNetworkInterface].
  /// [accessConfigs] Access configurations, i.e. IPs via which this instance can be accessed via the Internet.
  /// [aliasIpRanges] An array of alias IP ranges for this network interface.
  /// [igmpQuery] Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  /// [ipv6AccessType] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  /// [ipv6Address] An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [macAddress] MAC address assigned to this network interface.
  /// [name] A unique name for the resource, required by GCE.
  /// [network] The name or self_link of the network attached to this interface.
  /// [networkAttachment] The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  /// [networkIp] The private IP address assigned to the instance.
  /// [nicType] The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, and IRDMA
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  /// [stackType] The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// [subnetwork] The name or self_link of the subnetwork attached to this interface.
  /// [subnetworkProject] The project in which the subnetwork belongs.
  InstanceFromMachineImageNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.macAddress,
    this.name,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.securityPolicy,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterfaceAliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterfaceAliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'igmpQuery': ?igmpQuery,
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipv6AccessConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig>, List<Map<String, dynamic>>>(ipv6AccessConfigs, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6AccessType': ?ipv6AccessType,
      'ipv6Address': ?ipv6Address,
      'macAddress': ?macAddress,
      'name': ?name,
      'network': ?network,
      'networkAttachment': ?networkAttachment,
      'networkIp': ?networkIp,
      'nicType': ?nicType,
      'queueCount': ?queueCount,
      'securityPolicy': ?securityPolicy,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
      'subnetworkProject': ?subnetworkProject,
    };
  }

  factory InstanceFromMachineImageNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkInterface(
      accessConfigs: map['accessConfigs'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceAccessConfig>(map['accessConfigs']!, (value) => InstanceFromMachineImageNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aliasIpRanges: map['aliasIpRanges'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceAliasIpRange>(map['aliasIpRanges']!, (value) => InstanceFromMachineImageNetworkInterfaceAliasIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      igmpQuery: map['igmpQuery'] == null ? null : (map['igmpQuery']! as String).input(),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null ? null : (map['internalIpv6PrefixLength']! as int).input(),
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig>(map['ipv6AccessConfigs']!, (value) => InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6AccessType: map['ipv6AccessType'] == null ? null : (map['ipv6AccessType']! as String).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      networkAttachment: map['networkAttachment'] == null ? null : (map['networkAttachment']! as String).input(),
      networkIp: map['networkIp'] == null ? null : (map['networkIp']! as String).input(),
      nicType: map['nicType'] == null ? null : (map['nicType']! as String).input(),
      queueCount: map['queueCount'] == null ? null : (map['queueCount']! as int).input(),
      securityPolicy: map['securityPolicy'] == null ? null : (map['securityPolicy']! as String).input(),
      stackType: map['stackType'] == null ? null : (map['stackType']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
      subnetworkProject: map['subnetworkProject'] == null ? null : (map['subnetworkProject']! as String).input(),
    );
  }
}

