// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfacePublicIpv6Slaac {
  /// The assigned IPv4 address.
  final pulumi.Input<String>? address;
  /// The subnet prefix length.
  final pulumi.Input<int>? prefix;

  /// Creates a new [InterfacePublicIpv6Slaac].
  /// [address] The assigned IPv4 address.
  /// [prefix] The subnet prefix length.
  const InterfacePublicIpv6Slaac({
    this.address,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'prefix': ?prefix,
    };
  }

  factory InterfacePublicIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6Slaac(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

