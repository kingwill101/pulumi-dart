// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config.dart';
import 'alias_ip_range.dart';
import 'network_interface_nic_type.dart';
import 'network_interface_stack_type.dart';
import 'network_interface_sub_interface.dart';

/// A network interface resource attached to an instance.
class NetworkInterface {
  /// An array of configurations for this interface. Currently, only one access config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified, then this instance will have no external internet access.
  final pulumi.Input<List<AccessConfig>>? accessConfigs;
  /// An array of alias IP ranges for this network interface. You can only specify this field for network interfaces in VPC networks.
  final pulumi.Input<List<AliasIpRange>>? aliasIpRanges;
  /// The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int>? internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final pulumi.Input<List<AccessConfig>>? ipv6AccessConfigs;
  /// An IPv6 internal network address for this network interface. To use a static internal IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final pulumi.Input<String>? ipv6Address;
  /// URL of the VPC network resource for this instance. When creating an instance, if neither the network nor the subnetwork is specified, the default network global/networks/default is used. If the selected project doesn't have the default network, you must specify a network or subnet. If the network is not specified but the subnetwork is specified, the network is inferred. If you specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/global/networks/ network - projects/project/global/networks/network - global/networks/default
  final pulumi.Input<String>? network;
  /// The URL of the network attachment that this interface should connect to in the following format: projects/{project_number}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final pulumi.Input<String>? networkAttachment;
  /// An IPv4 internal IP address to assign to the instance for this network interface. If not specified by the user, an unused internal IP is assigned by the system.
  final pulumi.Input<String>? networkIP;
  /// The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final pulumi.Input<NetworkInterfaceNicType>? nicType;
  /// Name of the parent network interface of a VLAN based nic. If this field is specified, vlan must be set.
  final pulumi.Input<String>? parentNicName;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It'll be empty if not specified by the users.
  final pulumi.Input<int>? queueCount;
  /// The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
  final pulumi.Input<NetworkInterfaceStackType>? stackType;
  /// SubInterfaces help enable L2 communication for the instance over subnetworks that support L2. Every network interface will get a default untagged (vlan not specified) subinterface. Users can specify additional tagged subinterfaces which are sub-fields to the Network Interface.
  final pulumi.Input<List<NetworkInterfaceSubInterface>>? subinterfaces;
  /// The URL of the Subnetwork resource for this instance. If the network resource is in legacy mode, do not specify this field. If the network is in auto subnet mode, specifying the subnetwork is optional. If the network is in custom subnet mode, specifying the subnetwork is required. If you specify this field, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final pulumi.Input<String>? subnetwork;
  /// VLAN tag of a VLAN based network interface, must be in range from 2 to 4094 inclusively. This field is mandatory if the parent network interface name is set.
  final pulumi.Input<int>? vlan;

  /// Creates a new [NetworkInterface].
  /// [accessConfigs] An array of configurations for this interface. Currently, only one access config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified, then this instance will have no external internet access.
  /// [aliasIpRanges] An array of alias IP ranges for this network interface. You can only specify this field for network interfaces in VPC networks.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  /// [ipv6Address] An IPv6 internal network address for this network interface. To use a static internal IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [network] URL of the VPC network resource for this instance. When creating an instance, if neither the network nor the subnetwork is specified, the default network global/networks/default is used. If the selected project doesn't have the default network, you must specify a network or subnet. If the network is not specified but the subnetwork is specified, the network is inferred. If you specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/global/networks/ network - projects/project/global/networks/network - global/networks/default
  /// [networkAttachment] The URL of the network attachment that this interface should connect to in the following format: projects/{project_number}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  /// [networkIP] An IPv4 internal IP address to assign to the instance for this network interface. If not specified by the user, an unused internal IP is assigned by the system.
  /// [nicType] The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [parentNicName] Name of the parent network interface of a VLAN based nic. If this field is specified, vlan must be set.
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It'll be empty if not specified by the users.
  /// [stackType] The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
  /// [subinterfaces] SubInterfaces help enable L2 communication for the instance over subnetworks that support L2. Every network interface will get a default untagged (vlan not specified) subinterface. Users can specify additional tagged subinterfaces which are sub-fields to the Network Interface.
  /// [subnetwork] The URL of the Subnetwork resource for this instance. If the network resource is in legacy mode, do not specify this field. If the network is in auto subnet mode, specifying the subnetwork is optional. If the network is in custom subnet mode, specifying the subnetwork is required. If you specify this field, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  /// [vlan] VLAN tag of a VLAN based network interface, must be in range from 2 to 4094 inclusively. This field is mandatory if the parent network interface name is set.
  NetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.networkIP,
    this.nicType,
    this.parentNicName,
    this.queueCount,
    this.stackType,
    this.subinterfaces,
    this.subnetwork,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<AccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': ?pulumi.Input.mapOptionalInputValue<List<AliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<AliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipv6AccessConfigs': ?pulumi.Input.mapOptionalInputValue<List<AccessConfig>, List<Map<String, dynamic>>>(ipv6AccessConfigs, (value) => pulumi.Input.encodeList<AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Address': ?ipv6Address,
      'network': ?network,
      'networkAttachment': ?networkAttachment,
      'networkIP': ?networkIP,
      'nicType': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceNicType, String>(nicType, (value) => value.value),
      'parentNicName': ?parentNicName,
      'queueCount': ?queueCount,
      'stackType': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceStackType, String>(stackType, (value) => value.value),
      'subinterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceSubInterface>, List<Map<String, dynamic>>>(subinterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceSubInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetwork': ?subnetwork,
      'vlan': ?vlan,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      accessConfigs: map['accessConfigs'] == null ? null : (pulumi.Input.decodeList<AccessConfig>(map['accessConfigs'], (value) => AccessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aliasIpRanges: map['aliasIpRanges'] == null ? null : (pulumi.Input.decodeList<AliasIpRange>(map['aliasIpRanges'], (value) => AliasIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null ? null : (map['internalIpv6PrefixLength'] as int).input(),
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null ? null : (pulumi.Input.decodeList<AccessConfig>(map['ipv6AccessConfigs'], (value) => AccessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      networkAttachment: map['networkAttachment'] == null ? null : (map['networkAttachment'] as String).input(),
      networkIP: map['networkIP'] == null ? null : (map['networkIP'] as String).input(),
      nicType: map['nicType'] == null ? null : (NetworkInterfaceNicType.fromValue(map['nicType'] as String)).input(),
      parentNicName: map['parentNicName'] == null ? null : (map['parentNicName'] as String).input(),
      queueCount: map['queueCount'] == null ? null : (map['queueCount'] as int).input(),
      stackType: map['stackType'] == null ? null : (NetworkInterfaceStackType.fromValue(map['stackType'] as String)).input(),
      subinterfaces: map['subinterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceSubInterface>(map['subinterfaces'], (value) => NetworkInterfaceSubInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      vlan: map['vlan'] == null ? null : (map['vlan'] as int).input(),
    );
  }
}

