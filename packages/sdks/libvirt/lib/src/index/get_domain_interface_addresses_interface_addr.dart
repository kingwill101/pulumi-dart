// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainInterfaceAddressesInterfaceAddr {
  /// IP address.
  final pulumi.Input<String> addr;

  /// Network prefix length (e.g., 24 for 255.255.255.0).
  final pulumi.Input<double> prefix;

  /// Address type: `ipv4` or `ipv6`.
  final pulumi.Input<String> type;

  /// Creates a new [GetDomainInterfaceAddressesInterfaceAddr].
  /// [addr] IP address.
  /// [prefix] Network prefix length (e.g., 24 for 255.255.255.0).
  /// [type] Address type: `ipv4` or `ipv6`.
  GetDomainInterfaceAddressesInterfaceAddr({
    required this.addr,
    required this.prefix,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'addr': addr, 'prefix': prefix, 'type': type};
  }

  factory GetDomainInterfaceAddressesInterfaceAddr.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainInterfaceAddressesInterfaceAddr(
      addr: pulumi.Input.fromValue(map['addr'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
