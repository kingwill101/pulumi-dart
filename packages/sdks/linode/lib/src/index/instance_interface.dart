// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_interface_ipv4.dart';
import 'instance_interface_ipv6.dart';

class InstanceInterface {
  /// Whether this interface is currently booted and active.
  final pulumi.Input<bool>? active;
  /// The ID of the Placement Group.
  final pulumi.Input<int>? id;
  /// IPv4 CIDR VPC Subnet ranges that are routed to this Interface. IPv6 ranges are also available to select participants in the Beta program.
  final pulumi.Input<List<String>>? ipRanges;
  /// This Network Interface’s private IP address in Classless Inter-Domain Routing (CIDR) notation. (e.g. `10.0.0.1/24`) This field is only allowed for interfaces with the `vlan` purpose.
  final pulumi.Input<String>? ipamAddress;
  /// A set of reserved IPv4 addresses to assign to this Linode on creation.
  ///
  /// * **NOTE: IP reservation is not currently available to all users.**
  final pulumi.Input<InstanceInterfaceIpv4>? ipv4;
  /// This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  final pulumi.Input<InstanceInterfaceIpv6>? ipv6;
  /// The name of the VLAN to join. This field is only allowed and required for interfaces with the `vlan` purpose.
  final pulumi.Input<String>? label;
  /// Whether the interface is the primary interface that should have the default route for this Linode. This field is only allowed for interfaces with the `public` or `vpc` purpose.
  ///
  /// * `ipv4` - (Optional) The IPv4 configuration of the VPC interface. This field is currently only allowed for interfaces with the `vpc` purpose.
  ///
  /// * `ipv6` - (Optional) The IPv6 configuration of the VPC interface. This field is currently only allowed for interfaces with the `vpc` purpose. NOTE: IPv6 VPCs may not yet be available to all users.
  final pulumi.Input<bool>? primary;
  /// The type of interface. (`public`, `vlan`, `vpc`)
  final pulumi.Input<String> purpose;
  /// The name of the VPC Subnet to join. This field is only allowed and required for interfaces with the `vpc` purpose.
  final pulumi.Input<int>? subnetId;
  /// The ID of VPC which this interface is attached to.
  final pulumi.Input<int>? vpcId;

  /// Creates a new [InstanceInterface].
  /// [active] Whether this interface is currently booted and active.
  /// [id] The ID of the Placement Group.
  /// [ipRanges] IPv4 CIDR VPC Subnet ranges that are routed to this Interface. IPv6 ranges are also available to select participants in the Beta program.
  /// [ipamAddress] This Network Interface’s private IP address in Classless Inter-Domain Routing (CIDR) notation. (e.g. `10.0.0.1/24`) This field is only allowed for interfaces with the `vlan` purpose.
  /// [ipv4] A set of reserved IPv4 addresses to assign to this Linode on creation.
  /// [ipv6] This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  /// [label] The name of the VLAN to join. This field is only allowed and required for interfaces with the `vlan` purpose.
  /// [primary] Whether the interface is the primary interface that should have the default route for this Linode. This field is only allowed for interfaces with the `public` or `vpc` purpose.
  /// [purpose] The type of interface. (`public`, `vlan`, `vpc`)
  /// [subnetId] The name of the VPC Subnet to join. This field is only allowed and required for interfaces with the `vpc` purpose.
  /// [vpcId] The ID of VPC which this interface is attached to.
  const InstanceInterface({
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
      'ipv4': ?pulumi.Input.mapOptionalInputValue<InstanceInterfaceIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': ?pulumi.Input.mapOptionalInputValue<InstanceInterfaceIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
      'label': ?label,
      'primary': ?primary,
      'purpose': purpose,
      'subnetId': ?subnetId,
      'vpcId': ?vpcId,
    };
  }

  factory InstanceInterface.fromMap(Map<String, dynamic> map) {
    return InstanceInterface(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipRanges: (() { final guardedValue = map['ipRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipamAddress: (() { final guardedValue = map['ipamAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceInterfaceIpv4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceInterfaceIpv6.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

