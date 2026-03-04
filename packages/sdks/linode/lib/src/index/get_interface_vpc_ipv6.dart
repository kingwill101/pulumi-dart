// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interface_vpc_ipv6_range.dart';
import 'get_interface_vpc_ipv6_slaac.dart';

class GetInterfaceVpcIpv6 {
  /// Indicates whether the IPv6 configuration on the Linode interface is public.
  final pulumi.Input<bool> isPublic;

  /// IPv6 ranges assigned to this VPC interface.
  final pulumi.Input<List<GetInterfaceVpcIpv6Range>> ranges;

  /// IPv6 SLAAC address ranges.
  final pulumi.Input<List<GetInterfaceVpcIpv6Slaac>> slaacs;

  /// Creates a new [GetInterfaceVpcIpv6].
  /// [isPublic] Indicates whether the IPv6 configuration on the Linode interface is public.
  /// [ranges] IPv6 ranges assigned to this VPC interface.
  /// [slaacs] IPv6 SLAAC address ranges.
  GetInterfaceVpcIpv6({
    required this.isPublic,
    required this.ranges,
    required this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': isPublic,
      'ranges':
          pulumi.Input.mapInputValue<
            List<GetInterfaceVpcIpv6Range>,
            List<Map<String, dynamic>>
          >(
            ranges,
            (value) =>
                pulumi.Input.encodeList<
                  GetInterfaceVpcIpv6Range,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'slaacs':
          pulumi.Input.mapInputValue<
            List<GetInterfaceVpcIpv6Slaac>,
            List<Map<String, dynamic>>
          >(
            slaacs,
            (value) =>
                pulumi.Input.encodeList<
                  GetInterfaceVpcIpv6Slaac,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInterfaceVpcIpv6.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpcIpv6(
      isPublic: pulumi.Input.fromValue(map['isPublic'] as bool),
      ranges: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInterfaceVpcIpv6Range>(
          map['ranges']!,
          (value) => GetInterfaceVpcIpv6Range.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      slaacs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInterfaceVpcIpv6Slaac>(
          map['slaacs']!,
          (value) => GetInterfaceVpcIpv6Slaac.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
