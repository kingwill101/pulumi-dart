// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_interface_ipv6_range.dart';
import 'instance_interface_ipv6_slaac.dart';

class InstanceInterfaceIpv6 {
  /// If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  ///
  /// * `slaac` - (Optional) An array of SLAAC prefixes to use for this interface.
  ///
  /// * `range` - (Optional) An array of IPv6 ranges to use for this interface.
  final pulumi.Input<bool>? isPublic;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<List<InstanceInterfaceIpv6Range>>? ranges;
  /// An array of SLAAC prefixes to use for this interface.
  final pulumi.Input<List<InstanceInterfaceIpv6Slaac>>? slaacs;

  /// Creates a new [InstanceInterfaceIpv6].
  /// [isPublic] If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  /// [ranges] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  /// [slaacs] An array of SLAAC prefixes to use for this interface.
  const InstanceInterfaceIpv6({
    this.isPublic,
    this.ranges,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': ?isPublic,
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<InstanceInterfaceIpv6Range>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<InstanceInterfaceIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slaacs': ?pulumi.Input.mapOptionalInputValue<List<InstanceInterfaceIpv6Slaac>, List<Map<String, dynamic>>>(slaacs, (value) => pulumi.Input.encodeList<InstanceInterfaceIpv6Slaac, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceInterfaceIpv6.fromMap(Map<String, dynamic> map) {
    return InstanceInterfaceIpv6(
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceInterfaceIpv6Range>(guardedValue, (value) => InstanceInterfaceIpv6Range.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slaacs: (() { final guardedValue = map['slaacs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceInterfaceIpv6Slaac>(guardedValue, (value) => InstanceInterfaceIpv6Slaac.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

