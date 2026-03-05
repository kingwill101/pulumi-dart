// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interface_public_ipv6_range.dart';
import 'get_interface_public_ipv6_shared.dart';
import 'get_interface_public_ipv6_slaac.dart';

class GetInterfacePublicIpv6 {
  /// IPv6 ranges assigned to this interface.
  final pulumi.Input<List<GetInterfacePublicIpv6Range>> ranges;
  /// IPv6 ranges shared with other Linodes.
  final pulumi.Input<List<GetInterfacePublicIpv6Shared>> shareds;
  /// IPv6 SLAAC configuration.
  final pulumi.Input<List<GetInterfacePublicIpv6Slaac>> slaacs;

  /// Creates a new [GetInterfacePublicIpv6].
  /// [ranges] IPv6 ranges assigned to this interface.
  /// [shareds] IPv6 ranges shared with other Linodes.
  /// [slaacs] IPv6 SLAAC configuration.
  GetInterfacePublicIpv6({
    required this.ranges,
    required this.shareds,
    required this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': pulumi.Input.mapInputValue<List<GetInterfacePublicIpv6Range>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<GetInterfacePublicIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareds': pulumi.Input.mapInputValue<List<GetInterfacePublicIpv6Shared>, List<Map<String, dynamic>>>(shareds, (value) => pulumi.Input.encodeList<GetInterfacePublicIpv6Shared, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slaacs': pulumi.Input.mapInputValue<List<GetInterfacePublicIpv6Slaac>, List<Map<String, dynamic>>>(slaacs, (value) => pulumi.Input.encodeList<GetInterfacePublicIpv6Slaac, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInterfacePublicIpv6.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv6(
      ranges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInterfacePublicIpv6Range>(map['ranges']!, (value) => GetInterfacePublicIpv6Range.fromMap((value as Map).cast<String, dynamic>()))),
      shareds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInterfacePublicIpv6Shared>(map['shareds']!, (value) => GetInterfacePublicIpv6Shared.fromMap((value as Map).cast<String, dynamic>()))),
      slaacs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInterfacePublicIpv6Slaac>(map['slaacs']!, (value) => GetInterfacePublicIpv6Slaac.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

