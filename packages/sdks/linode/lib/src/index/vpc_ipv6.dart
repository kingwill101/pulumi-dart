// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIpv6 {
  /// The IPv6 range assigned to this VPC.
  final pulumi.Input<String>? allocatedRange;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The labeled IPv6 Inventory that the VPC Prefix should be allocated from.
  final pulumi.Input<String>? allocationClass;
  /// The IPv6 range assigned to this VPC.
  final pulumi.Input<String>? range;

  /// Creates a new [VpcIpv6].
  /// [allocatedRange] The IPv6 range assigned to this VPC.
  /// [allocationClass] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [range] The IPv6 range assigned to this VPC.
  const VpcIpv6({
    this.allocatedRange,
    this.allocationClass,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedRange': ?allocatedRange,
      'allocationClass': ?allocationClass,
      'range': ?range,
    };
  }

  factory VpcIpv6.fromMap(Map<String, dynamic> map) {
    return VpcIpv6(
      allocatedRange: (() { final guardedValue = map['allocatedRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allocationClass: (() { final guardedValue = map['allocationClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

