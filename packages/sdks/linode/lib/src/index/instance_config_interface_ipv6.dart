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
  final bool? isPublic;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final List<InstanceConfigInterfaceIpv6Range>? ranges;
  /// An array of SLAAC prefixes to use for this interface.
  final List<InstanceConfigInterfaceIpv6Slaac>? slaacs;

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
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<InstanceConfigInterfaceIpv6Range, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'slaacs': ?slaacs == null ? null : pulumi.Input.encodeList<InstanceConfigInterfaceIpv6Slaac, Map<String, dynamic>>(slaacs!, (value) => value.toMap()),
    };
  }

  factory InstanceConfigInterfaceIpv6.fromMap(Map<String, dynamic> map) {
    return InstanceConfigInterfaceIpv6(
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<InstanceConfigInterfaceIpv6Range>(map['ranges'], (value) => InstanceConfigInterfaceIpv6Range.fromMap((value as Map).cast<String, dynamic>())),
      slaacs: map['slaacs'] == null ? null : pulumi.Input.decodeList<InstanceConfigInterfaceIpv6Slaac>(map['slaacs'], (value) => InstanceConfigInterfaceIpv6Slaac.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

