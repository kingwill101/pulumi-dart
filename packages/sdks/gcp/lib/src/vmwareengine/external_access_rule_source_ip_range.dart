// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExternalAccessRuleSourceIpRange {
  /// A single IP address.
  final pulumi.Input<String>? ipAddress;

  /// An IP address range in the CIDR format.
  final pulumi.Input<String>? ipAddressRange;

  /// Creates a new [ExternalAccessRuleSourceIpRange].
  /// [ipAddress] A single IP address.
  /// [ipAddressRange] An IP address range in the CIDR format.
  ExternalAccessRuleSourceIpRange({this.ipAddress, this.ipAddressRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ipAddressRange': ?ipAddressRange,
    };
  }

  factory ExternalAccessRuleSourceIpRange.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleSourceIpRange(
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddressRange: (() {
        final guardedValue = map['ipAddressRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
