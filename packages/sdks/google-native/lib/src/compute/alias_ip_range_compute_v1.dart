// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An alias IP range attached to an instance's network interface.
class AliasIpRangeComputeV1 {
  /// The IP alias ranges to allocate for this interface. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. This range may be a single IP address (such as 10.2.3.4), a netmask (such as /24) or a CIDR-formatted string (such as 10.1.2.0/24).
  final pulumi.Input<String>? ipCidrRange;

  /// The name of a subnetwork secondary IP range from which to allocate an IP alias range. If not specified, the primary range of the subnetwork is used.
  final pulumi.Input<String>? subnetworkRangeName;

  /// Creates a new [AliasIpRangeComputeV1].
  /// [ipCidrRange] The IP alias ranges to allocate for this interface. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. This range may be a single IP address (such as 10.2.3.4), a netmask (such as /24) or a CIDR-formatted string (such as 10.1.2.0/24).
  /// [subnetworkRangeName] The name of a subnetwork secondary IP range from which to allocate an IP alias range. If not specified, the primary range of the subnetwork is used.
  AliasIpRangeComputeV1({this.ipCidrRange, this.subnetworkRangeName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ?ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory AliasIpRangeComputeV1.fromMap(Map<String, dynamic> map) {
    return AliasIpRangeComputeV1(
      ipCidrRange: (() {
        final guardedValue = map['ipCidrRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetworkRangeName: (() {
        final guardedValue = map['subnetworkRangeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
