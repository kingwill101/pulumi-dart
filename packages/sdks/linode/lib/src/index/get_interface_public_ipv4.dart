// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interface_public_ipv4_address.dart';
import 'get_interface_public_ipv4_shared.dart';

class GetInterfacePublicIpv4 {
  /// IPv4 addresses assigned to this interface.
  final pulumi.Input<List<GetInterfacePublicIpv4Address>> addresses;
  /// IPv4 addresses shared with other Linodes.
  final pulumi.Input<List<GetInterfacePublicIpv4Shared>> shareds;

  /// Creates a new [GetInterfacePublicIpv4].
  /// [addresses] IPv4 addresses assigned to this interface.
  /// [shareds] IPv4 addresses shared with other Linodes.
  GetInterfacePublicIpv4({
    required this.addresses,
    required this.shareds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.mapInputValue<List<GetInterfacePublicIpv4Address>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<GetInterfacePublicIpv4Address, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareds': pulumi.Input.mapInputValue<List<GetInterfacePublicIpv4Shared>, List<Map<String, dynamic>>>(shareds, (value) => pulumi.Input.encodeList<GetInterfacePublicIpv4Shared, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInterfacePublicIpv4.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv4(
      addresses: (pulumi.Input.decodeList<GetInterfacePublicIpv4Address>(map['addresses'], (value) => GetInterfacePublicIpv4Address.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shareds: (pulumi.Input.decodeList<GetInterfacePublicIpv4Shared>(map['shareds'], (value) => GetInterfacePublicIpv4Shared.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

