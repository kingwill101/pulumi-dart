// ignore_for_file: unused_element, unnecessary_cast

import 'get_interface_public_ipv4.dart';
import 'get_interface_public_ipv6.dart';

class GetInterfacePublic {
  /// The public IPv4 configuration for the interface.
  final GetInterfacePublicIpv4 ipv4;
  /// The public IPv6 configuration for the interface.
  final GetInterfacePublicIpv6 ipv6;

  /// Creates a new [GetInterfacePublic].
  /// [ipv4] The public IPv4 configuration for the interface.
  /// [ipv6] The public IPv6 configuration for the interface.
  GetInterfacePublic({
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ipv4.toMap(),
      'ipv6': ipv6.toMap(),
    };
  }

  factory GetInterfacePublic.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublic(
      ipv4: GetInterfacePublicIpv4.fromMap((map['ipv4'] as Map).cast<String, dynamic>()),
      ipv6: GetInterfacePublicIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>()),
    );
  }
}

