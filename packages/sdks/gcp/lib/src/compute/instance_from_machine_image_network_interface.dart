// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_network_interface_access_config.dart';
import 'instance_from_machine_image_network_interface_alias_ip_range.dart';
import 'instance_from_machine_image_network_interface_alias_ipv6_range.dart';
import 'instance_from_machine_image_network_interface_ipv6_access_config.dart';

class InstanceFromMachineImageNetworkInterface {
  /// Access configurations, i.e. IPs via which this instance can be accessed via the Internet.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceAccessConfig>?>? accessConfigs;
  /// An array of alias IP ranges for this network interface.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceAliasIpRange>?>? aliasIpRanges;
  /// An array of IPv6 alias IP ranges for this network interface.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceAliasIpv6Range>?>? aliasIpv6Ranges;
  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final pulumi.Input<String?>? igmpQuery;
  /// The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int?>? internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig>?>? ipv6AccessConfigs;
  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final pulumi.Input<String?>? ipv6AccessType;
  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final pulumi.Input<String?>? ipv6Address;
  /// MAC address assigned to this network interface.
  final pulumi.Input<String?>? macAddress;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name or selfLink of the network attached to this interface.
  final pulumi.Input<String?>? network;
  /// The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final pulumi.Input<String?>? networkAttachment;
  /// The private IP address assigned to the instance.
  final pulumi.Input<String?>? networkIp;
  /// The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, IRDMA and IDPF
  final pulumi.Input<String?>? nicType;
  /// Name of the parent network interface of a dynamic network interface.
  final pulumi.Input<String?>? parentNicName;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final pulumi.Input<int?>? queueCount;
  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String?>? securityPolicy;
  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<String?>? stackType;
  /// The name or selfLink of the subnetwork attached to this interface.
  final pulumi.Input<String?>? subnetwork;
  /// The project in which the subnetwork belongs.
  final pulumi.Input<String?>? subnetworkProject;
  /// VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.
  final pulumi.Input<int?>? vlan;

  /// Creates a new [InstanceFromMachineImageNetworkInterface].
  /// [accessConfigs] Access configurations, i.e. IPs via which this instance can be accessed via the Internet.
  /// [aliasIpRanges] An array of alias IP ranges for this network interface.
  /// [aliasIpv6Ranges] An array of IPv6 alias IP ranges for this network interface.
  /// [igmpQuery] Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  /// [ipv6AccessType] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  /// [ipv6Address] An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [macAddress] MAC address assigned to this network interface.
  /// [name] A unique name for the resource, required by GCE.
  /// [network] The name or selfLink of the network attached to this interface.
  /// [networkAttachment] The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  /// [networkIp] The private IP address assigned to the instance.
  /// [nicType] The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, IRDMA and IDPF
  /// [parentNicName] Name of the parent network interface of a dynamic network interface.
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  /// [stackType] The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// [subnetwork] The name or selfLink of the subnetwork attached to this interface.
  /// [subnetworkProject] The project in which the subnetwork belongs.
  /// [vlan] VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.
  const InstanceFromMachineImageNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.aliasIpv6Ranges,
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
    this.parentNicName,
    this.queueCount,
    this.securityPolicy,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterfaceAliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterfaceAliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpv6Ranges': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterfaceAliasIpv6Range>, List<Map<String, dynamic>>>(aliasIpv6Ranges, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterfaceAliasIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'parentNicName': ?parentNicName,
      'queueCount': ?queueCount,
      'securityPolicy': ?securityPolicy,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
      'subnetworkProject': ?subnetworkProject,
      'vlan': ?vlan,
    };
  }

  factory InstanceFromMachineImageNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkInterface(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceAccessConfig>(guardedValue, (value) => InstanceFromMachineImageNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aliasIpRanges: (() { final guardedValue = map['aliasIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceAliasIpRange>(guardedValue, (value) => InstanceFromMachineImageNetworkInterfaceAliasIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aliasIpv6Ranges: (() { final guardedValue = map['aliasIpv6Ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceAliasIpv6Range>(guardedValue, (value) => InstanceFromMachineImageNetworkInterfaceAliasIpv6Range.fromMap((value as Map).cast<String, dynamic>()))); })(),
      igmpQuery: (() { final guardedValue = map['igmpQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIpv6PrefixLength: (() { final guardedValue = map['internalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv6AccessConfigs: (() { final guardedValue = map['ipv6AccessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig>(guardedValue, (value) => InstanceFromMachineImageNetworkInterfaceIpv6AccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkIp: (() { final guardedValue = map['networkIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentNicName: (() { final guardedValue = map['parentNicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueCount: (() { final guardedValue = map['queueCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetworkProject: (() { final guardedValue = map['subnetworkProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
