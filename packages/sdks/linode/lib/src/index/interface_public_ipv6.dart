// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_public_ipv6_assigned_range.dart';
import 'interface_public_ipv6_range.dart';
import 'interface_public_ipv6_shared.dart';
import 'interface_public_ipv6_slaac.dart';

class InterfacePublicIpv6 {
  /// Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  final pulumi.Input<List<InterfacePublicIpv6AssignedRange>>? assignedRanges;
  /// Configured IPv6 range in CIDR notation (2600:0db8::1/64) or prefix-only (/64). Each object in this list supports:
  final pulumi.Input<List<InterfacePublicIpv6Range>>? ranges;
  /// (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  final pulumi.Input<List<InterfacePublicIpv6Shared>>? shareds;
  /// (Computed) The public SLAAC and subnet prefix settings for this public interface. Each object in this set supports:
  final pulumi.Input<List<InterfacePublicIpv6Slaac>>? slaacs;

  /// Creates a new [InterfacePublicIpv6].
  /// [assignedRanges] Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  /// [ranges] Configured IPv6 range in CIDR notation (2600:0db8::1/64) or prefix-only (/64). Each object in this list supports:
  /// [shareds] (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  /// [slaacs] (Computed) The public SLAAC and subnet prefix settings for this public interface. Each object in this set supports:
  InterfacePublicIpv6({
    this.assignedRanges,
    this.ranges,
    this.shareds,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedRanges': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv6AssignedRange>, List<Map<String, dynamic>>>(assignedRanges, (value) => pulumi.Input.encodeList<InterfacePublicIpv6AssignedRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv6Range>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<InterfacePublicIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareds': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv6Shared>, List<Map<String, dynamic>>>(shareds, (value) => pulumi.Input.encodeList<InterfacePublicIpv6Shared, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slaacs': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv6Slaac>, List<Map<String, dynamic>>>(slaacs, (value) => pulumi.Input.encodeList<InterfacePublicIpv6Slaac, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterfacePublicIpv6.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6(
      assignedRanges: (() { final guardedValue = map['assignedRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv6AssignedRange>(guardedValue, (value) => InterfacePublicIpv6AssignedRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv6Range>(guardedValue, (value) => InterfacePublicIpv6Range.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shareds: (() { final guardedValue = map['shareds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv6Shared>(guardedValue, (value) => InterfacePublicIpv6Shared.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slaacs: (() { final guardedValue = map['slaacs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv6Slaac>(guardedValue, (value) => InterfacePublicIpv6Slaac.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

