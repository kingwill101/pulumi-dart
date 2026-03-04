// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAttachment {
  /// The resource ID of the associated network attached to the virtual machine.
  /// It can be one of cloudServicesNetwork, l3Network, l2Network or trunkedNetwork resources.
  final pulumi.Input<String> attachedNetworkId;

  /// The indicator of whether this is the default gateway.
  /// Only one of the attached networks (including the CloudServicesNetwork attachment) for a single machine may be specified as True.
  final pulumi.Input<String>? defaultGateway;

  /// The IP allocation mechanism for the virtual machine.
  /// Dynamic and Static are only valid for l3Network which may also specify Disabled.
  /// Otherwise, Disabled is the only permitted value.
  final pulumi.Input<String> ipAllocationMethod;

  /// The IPv4 address of the virtual machine.
  ///
  /// This field is used only if the attached network has IPAllocationType of IPV4 or DualStack.
  ///
  /// If IPAllocationMethod is:
  /// Static - this field must contain a user specified IPv4 address from within the subnet specified in the attached network.
  /// Dynamic - this field is read-only, but will be populated with an address from within the subnet specified in the attached network.
  /// Disabled - this field will be empty.
  final pulumi.Input<String>? ipv4Address;

  /// The IPv6 address of the virtual machine.
  ///
  /// This field is used only if the attached network has IPAllocationType of IPV6 or DualStack.
  ///
  /// If IPAllocationMethod is:
  /// Static - this field must contain an IPv6 address range from within the range specified in the attached network.
  /// Dynamic - this field is read-only, but will be populated with an range from within the subnet specified in the attached network.
  /// Disabled - this field will be empty.
  final pulumi.Input<String>? ipv6Address;

  /// The associated network's interface name.
  /// If specified, the network attachment name has a maximum length of 15 characters and must be unique to this virtual machine.
  /// If the user doesn’t specify this value, the default interface name of the network resource will be used.
  /// For a CloudServicesNetwork resource, this name will be ignored.
  final pulumi.Input<String>? networkAttachmentName;

  /// Creates a new [NetworkAttachment].
  /// [attachedNetworkId] The resource ID of the associated network attached to the virtual machine.
  /// [defaultGateway] The indicator of whether this is the default gateway.
  /// [ipAllocationMethod] The IP allocation mechanism for the virtual machine.
  /// [ipv4Address] The IPv4 address of the virtual machine.
  /// [ipv6Address] The IPv6 address of the virtual machine.
  /// [networkAttachmentName] The associated network's interface name.
  NetworkAttachment({
    required this.attachedNetworkId,
    this.defaultGateway,
    required this.ipAllocationMethod,
    this.ipv4Address,
    this.ipv6Address,
    this.networkAttachmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedNetworkId': attachedNetworkId,
      'defaultGateway': ?defaultGateway,
      'ipAllocationMethod': ipAllocationMethod,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'networkAttachmentName': ?networkAttachmentName,
    };
  }

  factory NetworkAttachment.fromMap(Map<String, dynamic> map) {
    return NetworkAttachment(
      attachedNetworkId: pulumi.Input.fromValue(
        map['attachedNetworkId'] as String,
      ),
      defaultGateway: (() {
        final guardedValue = map['defaultGateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAllocationMethod: pulumi.Input.fromValue(
        map['ipAllocationMethod'] as String,
      ),
      ipv4Address: (() {
        final guardedValue = map['ipv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkAttachmentName: (() {
        final guardedValue = map['networkAttachmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
