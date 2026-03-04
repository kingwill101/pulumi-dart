// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfaceVlan {
  /// The IPAM (IP Address Management) address of the VLAN interface.
  final pulumi.Input<String> ipamAddress;

  /// The label of the VLAN.
  final pulumi.Input<String> vlanLabel;

  /// Creates a new [GetInterfaceVlan].
  /// [ipamAddress] The IPAM (IP Address Management) address of the VLAN interface.
  /// [vlanLabel] The label of the VLAN.
  GetInterfaceVlan({required this.ipamAddress, required this.vlanLabel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamAddress': ipamAddress,
      'vlanLabel': vlanLabel,
    };
  }

  factory GetInterfaceVlan.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVlan(
      ipamAddress: pulumi.Input.fromValue(map['ipamAddress'] as String),
      vlanLabel: pulumi.Input.fromValue(map['vlanLabel'] as String),
    );
  }
}
