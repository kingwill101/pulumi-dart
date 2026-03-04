// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfacePublicIpv6Slaac {
  /// The IPv6 SLAAC address.
  final pulumi.Input<String> address;

  /// The prefix length for the IPv6 SLAAC address.
  final pulumi.Input<int> prefix;

  /// Creates a new [GetInterfacePublicIpv6Slaac].
  /// [address] The IPv6 SLAAC address.
  /// [prefix] The prefix length for the IPv6 SLAAC address.
  GetInterfacePublicIpv6Slaac({required this.address, required this.prefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': address, 'prefix': prefix};
  }

  factory GetInterfacePublicIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv6Slaac(
      address: pulumi.Input.fromValue(map['address'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as int),
    );
  }
}
