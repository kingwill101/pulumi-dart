// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_interface_ipv6_range.dart';
import 'instance_config_interface_ipv6_slaac.dart';

class InstanceConfigInterfaceIpv6 {
  /// If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  ///
  /// * `slaac` - (Optional) An array of SLAAC prefixes to use for this interface.
  ///
  /// * `range` - (Optional) An array of IPv6 ranges to use for this interface.
  final pulumi.Input<bool>? isPublic;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<List<InstanceConfigInterfaceIpv6Range>>? ranges;
  /// An array of SLAAC prefixes to use for this interface.
  final pulumi.Input<List<InstanceConfigInterfaceIpv6Slaac>>? slaacs;

  /// Creates a new [InstanceConfigInterfaceIpv6].
  /// [isPublic] If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  /// [ranges] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  /// [slaacs] An array of SLAAC prefixes to use for this interface.
  InstanceConfigInterfaceIpv6({
    this.isPublic,
    this.ranges,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': ?isPublic,
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigInterfaceIpv6Range>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<InstanceConfigInterfaceIpv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slaacs': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigInterfaceIpv6Slaac>, List<Map<String, dynamic>>>(slaacs, (value) => pulumi.Input.encodeList<InstanceConfigInterfaceIpv6Slaac, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceConfigInterfaceIpv6.fromMap(Map<String, dynamic> map) {
    return InstanceConfigInterfaceIpv6(
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfigInterfaceIpv6Range>(guardedValue, (value) => InstanceConfigInterfaceIpv6Range.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slaacs: (() { final guardedValue = map['slaacs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfigInterfaceIpv6Slaac>(guardedValue, (value) => InstanceConfigInterfaceIpv6Slaac.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

