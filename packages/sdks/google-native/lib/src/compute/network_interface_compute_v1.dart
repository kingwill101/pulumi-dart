// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config_compute_v1.dart';
import 'alias_ip_range_compute_v1.dart';
import 'network_interface_nic_type_compute_v1.dart';
import 'network_interface_stack_type_compute_v1.dart';

/// A network interface resource attached to an instance.
class NetworkInterfaceComputeV1 {
  /// An array of configurations for this interface. Currently, only one access config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified, then this instance will have no external internet access.
  final List<AccessConfigComputeV1>? accessConfigs;
  /// An array of alias IP ranges for this network interface. You can only specify this field for network interfaces in VPC networks.
  final List<AliasIpRangeComputeV1>? aliasIpRanges;
  /// The prefix length of the primary internal IPv6 range.
  final int? internalIpv6PrefixLength;
  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final List<AccessConfigComputeV1>? ipv6AccessConfigs;
  /// An IPv6 internal network address for this network interface. To use a static internal IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String? ipv6Address;
  /// URL of the VPC network resource for this instance. When creating an instance, if neither the network nor the subnetwork is specified, the default network global/networks/default is used. If the selected project doesn't have the default network, you must specify a network or subnet. If the network is not specified but the subnetwork is specified, the network is inferred. If you specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/global/networks/ network - projects/project/global/networks/network - global/networks/default
  final String? network;
  /// The URL of the network attachment that this interface should connect to in the following format: projects/{project_number}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final String? networkAttachment;
  /// An IPv4 internal IP address to assign to the instance for this network interface. If not specified by the user, an unused internal IP is assigned by the system.
  final String? networkIP;
  /// The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final NetworkInterfaceNicTypeComputeV1? nicType;
  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It'll be empty if not specified by the users.
  final int? queueCount;
  /// The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
  final NetworkInterfaceStackTypeComputeV1? stackType;
  /// The URL of the Subnetwork resource for this instance. If the network resource is in legacy mode, do not specify this field. If the network is in auto subnet mode, specifying the subnetwork is optional. If the network is in custom subnet mode, specifying the subnetwork is required. If you specify this field, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final String? subnetwork;

  /// Creates a new [NetworkInterfaceComputeV1].
  /// [accessConfigs] An array of configurations for this interface. Currently, only one access config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified, then this instance will have no external internet access.
  /// [aliasIpRanges] An array of alias IP ranges for this network interface. You can only specify this field for network interfaces in VPC networks.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  /// [ipv6Address] An IPv6 internal network address for this network interface. To use a static internal IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [network] URL of the VPC network resource for this instance. When creating an instance, if neither the network nor the subnetwork is specified, the default network global/networks/default is used. If the selected project doesn't have the default network, you must specify a network or subnet. If the network is not specified but the subnetwork is specified, the network is inferred. If you specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/global/networks/ network - projects/project/global/networks/network - global/networks/default
  /// [networkAttachment] The URL of the network attachment that this interface should connect to in the following format: projects/{project_number}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  /// [networkIP] An IPv4 internal IP address to assign to the instance for this network interface. If not specified by the user, an unused internal IP is assigned by the system.
  /// [nicType] The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It'll be empty if not specified by the users.
  /// [stackType] The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
  /// [subnetwork] The URL of the Subnetwork resource for this instance. If the network resource is in legacy mode, do not specify this field. If the network is in auto subnet mode, specifying the subnetwork is optional. If the network is in custom subnet mode, specifying the subnetwork is required. If you specify this field, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  NetworkInterfaceComputeV1({
    this.accessConfigs,
    this.aliasIpRanges,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.networkIP,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?accessConfigs == null ? null : pulumi.Input.encodeList<AccessConfigComputeV1, Map<String, dynamic>>(accessConfigs!, (value) => value.toMap()),
      'aliasIpRanges': ?aliasIpRanges == null ? null : pulumi.Input.encodeList<AliasIpRangeComputeV1, Map<String, dynamic>>(aliasIpRanges!, (value) => value.toMap()),
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipv6AccessConfigs': ?ipv6AccessConfigs == null ? null : pulumi.Input.encodeList<AccessConfigComputeV1, Map<String, dynamic>>(ipv6AccessConfigs!, (value) => value.toMap()),
      'ipv6Address': ?ipv6Address,
      'network': ?network,
      'networkAttachment': ?networkAttachment,
      'networkIP': ?networkIP,
      'nicType': ?nicType == null ? null : nicType!.value,
      'queueCount': ?queueCount,
      'stackType': ?stackType == null ? null : stackType!.value,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkInterfaceComputeV1.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceComputeV1(
      accessConfigs: map['accessConfigs'] == null ? null : pulumi.Input.decodeList<AccessConfigComputeV1>(map['accessConfigs'], (value) => AccessConfigComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      aliasIpRanges: map['aliasIpRanges'] == null ? null : pulumi.Input.decodeList<AliasIpRangeComputeV1>(map['aliasIpRanges'], (value) => AliasIpRangeComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null ? null : map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null ? null : pulumi.Input.decodeList<AccessConfigComputeV1>(map['ipv6AccessConfigs'], (value) => AccessConfigComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkAttachment: map['networkAttachment'] == null ? null : map['networkAttachment'] as String,
      networkIP: map['networkIP'] == null ? null : map['networkIP'] as String,
      nicType: map['nicType'] == null ? null : NetworkInterfaceNicTypeComputeV1.fromValue(map['nicType'] as String),
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      stackType: map['stackType'] == null ? null : NetworkInterfaceStackTypeComputeV1.fromValue(map['stackType'] as String),
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

