// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExternalAccessRuleSourceIpRange {
  /// A single IP address.
  final pulumi.Input<String> ipAddress;
  /// An IP address range in the CIDR format.
  final pulumi.Input<String> ipAddressRange;

  /// Creates a new [GetExternalAccessRuleSourceIpRange].
  /// [ipAddress] A single IP address.
  /// [ipAddressRange] An IP address range in the CIDR format.
  const GetExternalAccessRuleSourceIpRange({
    required this.ipAddress,
    required this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipAddressRange': ipAddressRange,
    };
  }

  factory GetExternalAccessRuleSourceIpRange.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleSourceIpRange(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipAddressRange: pulumi.Input.fromValue(map['ipAddressRange'] as String),
    );
  }
}
