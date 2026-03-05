// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcSubnetIpv6 {
  /// The IPv6 range assigned to this subnet.
  final pulumi.Input<String>? allocatedRange;
  /// An existing IPv6 prefix owned by the current account or a forward slash (/) followed by a valid prefix length. If unspecified, a range with the default prefix will be allocated for this VPC.
  final pulumi.Input<String>? range;

  /// Creates a new [VpcSubnetIpv6].
  /// [allocatedRange] The IPv6 range assigned to this subnet.
  /// [range] An existing IPv6 prefix owned by the current account or a forward slash (/) followed by a valid prefix length. If unspecified, a range with the default prefix will be allocated for this VPC.
  VpcSubnetIpv6({
    this.allocatedRange,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedRange': ?allocatedRange,
      'range': ?range,
    };
  }

  factory VpcSubnetIpv6.fromMap(Map<String, dynamic> map) {
    return VpcSubnetIpv6(
      allocatedRange: (() { final guardedValue = map['allocatedRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

