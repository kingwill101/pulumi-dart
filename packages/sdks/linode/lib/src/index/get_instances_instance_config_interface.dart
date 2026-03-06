// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_config_interface_ipv4.dart';
import 'get_instances_instance_config_interface_ipv6.dart';

class GetInstancesInstanceConfigInterface {
  /// Whether this interface is currently booted and active.
  final pulumi.Input<bool> active;
  /// The ID of the Placement Group in the Linode API.
  final pulumi.Input<int> id;
  /// IPv4 CIDR VPC Subnet ranges that are routed to this Interface. IPv6 ranges are also available to select participants in the Beta program.
  final pulumi.Input<List<String>>? ipRanges;
  /// This Network Interface’s private IP address in Classless Inter-Domain Routing (CIDR) notation. (e.g. `10.0.0.1/24`) This field is only allowed for interfaces with the `vlan` purpose.
  final pulumi.Input<String>? ipamAddress;
  /// This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
  final pulumi.Input<GetInstancesInstanceConfigInterfaceIpv4> ipv4;
  /// This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  final pulumi.Input<GetInstancesInstanceConfigInterfaceIpv6> ipv6;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String>? label;
  /// Whether the interface is the primary interface that should have the default route for this Linode. This field is only allowed for interfaces with the `public` or `vpc` purpose.
  final pulumi.Input<bool>? primary;
  /// The type of interface. (`public`, `vlan`, `vpc`)
  final pulumi.Input<String> purpose;
  /// The name of the VPC Subnet to join. This field is only allowed and required for interfaces with the `vpc` purpose.
  final pulumi.Input<int>? subnetId;
  /// The ID of VPC which this interface is attached to.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetInstancesInstanceConfigInterface].
  /// [active] Whether this interface is currently booted and active.
  /// [id] The ID of the Placement Group in the Linode API.
  /// [ipRanges] IPv4 CIDR VPC Subnet ranges that are routed to this Interface. IPv6 ranges are also available to select participants in the Beta program.
  /// [ipamAddress] This Network Interface’s private IP address in Classless Inter-Domain Routing (CIDR) notation. (e.g. `10.0.0.1/24`) This field is only allowed for interfaces with the `vlan` purpose.
  /// [ipv4] This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
  /// [ipv6] This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [primary] Whether the interface is the primary interface that should have the default route for this Linode. This field is only allowed for interfaces with the `public` or `vpc` purpose.
  /// [purpose] The type of interface. (`public`, `vlan`, `vpc`)
  /// [subnetId] The name of the VPC Subnet to join. This field is only allowed and required for interfaces with the `vpc` purpose.
  /// [vpcId] The ID of VPC which this interface is attached to.
  const GetInstancesInstanceConfigInterface({
    required this.active,
    required this.id,
    this.ipRanges,
    this.ipamAddress,
    required this.ipv4,
    required this.ipv6,
    this.label,
    this.primary,
    required this.purpose,
    this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'id': id,
      'ipRanges': ?ipRanges,
      'ipamAddress': ?ipamAddress,
      'ipv4': pulumi.Input.mapInputValue<GetInstancesInstanceConfigInterfaceIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<GetInstancesInstanceConfigInterfaceIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
      'label': ?label,
      'primary': ?primary,
      'purpose': purpose,
      'subnetId': ?subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetInstancesInstanceConfigInterface.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigInterface(
      active: pulumi.Input.fromValue(map['active'] as bool),
      id: pulumi.Input.fromValue(map['id'] as int),
      ipRanges: (() { final guardedValue = map['ipRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipamAddress: (() { final guardedValue = map['ipamAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4: pulumi.Input.fromValue(GetInstancesInstanceConfigInterfaceIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(GetInstancesInstanceConfigInterfaceIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

