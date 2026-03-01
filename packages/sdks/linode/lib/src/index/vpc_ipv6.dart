// ignore_for_file: unused_element, unnecessary_cast


class VpcIpv6 {
  /// The IPv6 range assigned to this VPC.
  final String? allocatedRange;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The labeled IPv6 Inventory that the VPC Prefix should be allocated from.
  final String? allocationClass;
  /// The IPv6 range assigned to this VPC.
  final String? range;

  /// Creates a new [VpcIpv6].
  /// [allocatedRange] The IPv6 range assigned to this VPC.
  /// [allocationClass] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [range] The IPv6 range assigned to this VPC.
  VpcIpv6({
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
      allocatedRange: map['allocatedRange'] == null ? null : map['allocatedRange'] as String,
      allocationClass: map['allocationClass'] == null ? null : map['allocationClass'] as String,
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

