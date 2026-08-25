// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_network_interface_access_config.dart';
import 'restore_workload_compute_instance_restore_properties_network_interface_alias_ip_range.dart';
import 'restore_workload_compute_instance_restore_properties_network_interface_ipv6_access_config.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface {
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig>?>? accessConfigs;
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange>?>? aliasIpRanges;
  /// Optional. The prefix length of the primary internal IPv6 range.
  final pulumi.Input<int?>? internalIpv6PrefixLength;
  /// Optional. An IPv4 internal IP address to assign to the instance.
  final pulumi.Input<String?>? ipAddress;
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig>?>? ipv6AccessConfigs;
  /// Possible values are: `UNSPECIFIED_IPV6_ACCESS_TYPE`, `INTERNAL`, `EXTERNAL`.
  final pulumi.Input<String?>? ipv6AccessType;
  /// Optional. An IPv6 internal network address for this network interface.
  final pulumi.Input<String?>? ipv6Address;
  /// Optional. URL of the VPC network resource for this instance.
  final pulumi.Input<String?>? network;
  /// (Optional)
  final pulumi.Input<String?>? networkAttachment;
  /// Possible values are: `NIC_TYPE_UNSPECIFIED`, `VIRTIO_NET`, `GVNIC`.
  final pulumi.Input<String?>? nicType;
  /// (Optional)
  final pulumi.Input<int?>? queueCount;
  /// Possible values are: `STACK_TYPE_UNSPECIFIED`, `IPV4_ONLY`, `IPV4_IPV6`.
  final pulumi.Input<String?>? stackType;
  /// Optional. The URL of the Subnetwork resource for this instance.
  final pulumi.Input<String?>? subnetwork;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface].
  /// [accessConfigs] Structure is documented below.
  /// [aliasIpRanges] Structure is documented below.
  /// [internalIpv6PrefixLength] Optional. The prefix length of the primary internal IPv6 range.
  /// [ipAddress] Optional. An IPv4 internal IP address to assign to the instance.
  /// [ipv6AccessConfigs] Structure is documented below.
  /// [ipv6AccessType] Possible values are: `UNSPECIFIED_IPV6_ACCESS_TYPE`, `INTERNAL`, `EXTERNAL`.
  /// [ipv6Address] Optional. An IPv6 internal network address for this network interface.
  /// [network] Optional. URL of the VPC network resource for this instance.
  /// [networkAttachment] (Optional)
  /// [nicType] Possible values are: `NIC_TYPE_UNSPECIFIED`, `VIRTIO_NET`, `GVNIC`.
  /// [queueCount] (Optional)
  /// [stackType] Possible values are: `STACK_TYPE_UNSPECIFIED`, `IPV4_ONLY`, `IPV4_IPV6`.
  /// [subnetwork] Optional. The URL of the Subnetwork resource for this instance.
  const RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.internalIpv6PrefixLength,
    this.ipAddress,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aliasIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange>, List<Map<String, dynamic>>>(aliasIpRanges, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipAddress': ?ipAddress,
      'ipv6AccessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig>, List<Map<String, dynamic>>>(ipv6AccessConfigs, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6AccessType': ?ipv6AccessType,
      'ipv6Address': ?ipv6Address,
      'network': ?network,
      'networkAttachment': ?networkAttachment,
      'nicType': ?nicType,
      'queueCount': ?queueCount,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig>(guardedValue, (value) => RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aliasIpRanges: (() { final guardedValue = map['aliasIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange>(guardedValue, (value) => RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      internalIpv6PrefixLength: (() { final guardedValue = map['internalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AccessConfigs: (() { final guardedValue = map['ipv6AccessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig>(guardedValue, (value) => RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueCount: (() { final guardedValue = map['queueCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
