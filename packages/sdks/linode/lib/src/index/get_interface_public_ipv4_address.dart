// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfacePublicIpv4Address {
  /// The IPv4 address.
  final pulumi.Input<String> address;
  /// Whether this is the primary IPv4 address.
  final pulumi.Input<bool> primary;

  /// Creates a new [GetInterfacePublicIpv4Address].
  /// [address] The IPv4 address.
  /// [primary] Whether this is the primary IPv4 address.
  const GetInterfacePublicIpv4Address({
    required this.address,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'primary': primary,
    };
  }

  factory GetInterfacePublicIpv4Address.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv4Address(
      address: pulumi.Input.fromValue(map['address'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
    );
  }
}

