// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_vpc_ipv6_assigned_range.dart';
import 'interface_vpc_ipv6_assigned_slaac.dart';
import 'interface_vpc_ipv6_range.dart';
import 'interface_vpc_ipv6_slaac.dart';

class InterfaceVpcIpv6 {
  /// Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  final pulumi.Input<List<InterfaceVpcIpv6AssignedRange>>? assignedRanges;
  /// Assigned IPv6 SLAAC address ranges to use in the VPC subnet, calculated from `slaac` input.
  final pulumi.Input<List<InterfaceVpcIpv6AssignedSlaac>>? assignedSlaacs;
  /// Indicates whether the IPv6 configuration profile interface is public. (Default `false`)
  final pulumi.Input<bool>? isPublic;
  /// Defines additional IPv6 network ranges.
  final pulumi.Input<List<InterfaceVpcIpv6Range>>? ranges;
  /// Defines IPv6 SLAAC address ranges. An address is automatically generated from the assigned /64 prefix using the Linode’s MAC address, just like on public IPv6 interfaces. Router advertisements (RA) are sent to the Linode, so standard SLAAC configuration works without any changes.
  final pulumi.Input<List<InterfaceVpcIpv6Slaac>>? slaacs;

  /// Creates a new [InterfaceVpcIpv6].
  /// [assignedRanges] Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  /// [assignedSlaacs] Assigned IPv6 SLAAC address ranges to use in the VPC subnet, calculated from `slaac` input.
  /// [isPublic] Indicates whether the IPv6 configuration profile interface is public. (Default `false`)
  /// [ranges] Defines additional IPv6 network ranges.
  /// [slaacs] Defines IPv6 SLAAC address ranges. An address is automatically generated from the assigned /64 prefix using the Linode’s MAC address, just like on public IPv6 interfaces. Router advertisements (RA) are sent to the Linode, so standard SLAAC configuration works without any changes.
  InterfaceVpcIpv6({
    this.assignedRanges,
    this.assignedSlaacs,
    this.isPublic,
    this.ranges,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedRanges': ?pulumi.Input.mapOptionalInputValue<List<InterfaceVpcIpv6AssignedRange>, List<Map<String, dynamic>>>(assignedRanges, (value) => pulumi.Input.encodeList<InterfaceVpcIpv6AssignedRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assignedSlaacs': ?pulumi.Input.mapOptionalInputValue<List<InterfaceVpcIpv6AssignedSlaac>, List<Map<String, dynamic>>>(assignedSlaacs, (value) => pulumi.Input.encodeList<InterfaceVpcIpv6AssignedSlaac, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isPublic': ?isPublic,
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<InterfaceVpcIpv6Range>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<InterfaceVpcIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slaacs': ?pulumi.Input.mapOptionalInputValue<List<InterfaceVpcIpv6Slaac>, List<Map<String, dynamic>>>(slaacs, (value) => pulumi.Input.encodeList<InterfaceVpcIpv6Slaac, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterfaceVpcIpv6.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6(
      assignedRanges: (() { final guardedValue = map['assignedRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfaceVpcIpv6AssignedRange>(guardedValue, (value) => InterfaceVpcIpv6AssignedRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      assignedSlaacs: (() { final guardedValue = map['assignedSlaacs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfaceVpcIpv6AssignedSlaac>(guardedValue, (value) => InterfaceVpcIpv6AssignedSlaac.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfaceVpcIpv6Range>(guardedValue, (value) => InterfaceVpcIpv6Range.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slaacs: (() { final guardedValue = map['slaacs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfaceVpcIpv6Slaac>(guardedValue, (value) => InterfaceVpcIpv6Slaac.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

