// ignore_for_file: unused_element, unnecessary_cast

import 'instance_config_interface_ipv4.dart';
import 'instance_config_interface_ipv6.dart';

class InstanceConfigInterface {
  /// Whether this interface is currently booted and active.
  final bool? active;
  /// The ID of the interface.
  final int? id;
  /// IPv4 CIDR VPC Subnet ranges that are routed to this Interface. IPv6 ranges are also available to select participants in the Beta program.
  final List<String>? ipRanges;
  /// This Network Interface’s private IP address in Classless Inter-Domain Routing (CIDR) notation. (e.g. `10.0.0.1/24`) This field is only allowed for interfaces with the `vlan` purpose.
  final String? ipamAddress;
  /// The IPv4 configuration of the VPC interface.This attribute is only allowed for VPC interfaces.
  final InstanceConfigInterfaceIpv4? ipv4;
  /// The IPv6 configuration of the VPC interface. This attribute is only allowed for VPC interfaces.
  final InstanceConfigInterfaceIpv6? ipv6;
  /// The name of the VLAN to join. This field is only allowed and required for interfaces with the `vlan` purpose.
  final String? label;
  /// Whether the interface is the primary interface that should have the default route for this Linode. This field is only allowed for interfaces with the `public` or `vpc` purpose.
  ///
  /// * `ipv4` - (Optional) The IPv4 configuration of the VPC interface. This field is currently only allowed for interfaces with the `vpc` purpose.
  ///
  /// * `ipv6` - (Optional) The IPv6 configuration of the VPC interface. This field is currently only allowed for interfaces with the `vpc` purpose. NOTE: IPv6 VPCs may not yet be available to all users.
  final bool? primary;
  /// The type of interface. (`public`, `vlan`, `vpc`)
  final String purpose;
  /// The name of the VPC Subnet to join. This field is only allowed and required for interfaces with the `vpc` purpose.
  final int? subnetId;
  /// The ID of VPC which this interface is attached to.
  final int? vpcId;

  /// Creates a new [InstanceConfigInterface].
  /// [active] Whether this interface is currently booted and active.
  /// [id] The ID of the interface.
  /// [ipRanges] IPv4 CIDR VPC Subnet ranges that are routed to this Interface. IPv6 ranges are also available to select participants in the Beta program.
  /// [ipamAddress] This Network Interface’s private IP address in Classless Inter-Domain Routing (CIDR) notation. (e.g. `10.0.0.1/24`) This field is only allowed for interfaces with the `vlan` purpose.
  /// [ipv4] The IPv4 configuration of the VPC interface.This attribute is only allowed for VPC interfaces.
  /// [ipv6] The IPv6 configuration of the VPC interface. This attribute is only allowed for VPC interfaces.
  /// [label] The name of the VLAN to join. This field is only allowed and required for interfaces with the `vlan` purpose.
  /// [primary] Whether the interface is the primary interface that should have the default route for this Linode. This field is only allowed for interfaces with the `public` or `vpc` purpose.
  /// [purpose] The type of interface. (`public`, `vlan`, `vpc`)
  /// [subnetId] The name of the VPC Subnet to join. This field is only allowed and required for interfaces with the `vpc` purpose.
  /// [vpcId] The ID of VPC which this interface is attached to.
  InstanceConfigInterface({
    this.active,
    this.id,
    this.ipRanges,
    this.ipamAddress,
    this.ipv4,
    this.ipv6,
    this.label,
    this.primary,
    required this.purpose,
    this.subnetId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'id': ?id,
      'ipRanges': ?ipRanges,
      'ipamAddress': ?ipamAddress,
      'ipv4': ?ipv4 == null ? null : ipv4!.toMap(),
      'ipv6': ?ipv6 == null ? null : ipv6!.toMap(),
      'label': ?label,
      'primary': ?primary,
      'purpose': purpose,
      'subnetId': ?subnetId,
      'vpcId': ?vpcId,
    };
  }

  factory InstanceConfigInterface.fromMap(Map<String, dynamic> map) {
    return InstanceConfigInterface(
      active: map['active'] == null ? null : map['active'] as bool,
      id: map['id'] == null ? null : map['id'] as int,
      ipRanges: map['ipRanges'] == null ? null : (map['ipRanges'] as List).cast<String>(),
      ipamAddress: map['ipamAddress'] == null ? null : map['ipamAddress'] as String,
      ipv4: map['ipv4'] == null ? null : InstanceConfigInterfaceIpv4.fromMap((map['ipv4'] as Map).cast<String, dynamic>()),
      ipv6: map['ipv6'] == null ? null : InstanceConfigInterfaceIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>()),
      label: map['label'] == null ? null : map['label'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      purpose: map['purpose'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as int,
    );
  }
}

