// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExternalAccessRuleDestinationIpRange {
  /// The name of an `ExternalAddress` resource.
  final pulumi.Input<String>? externalAddress;
  /// An IP address range in the CIDR format.
  final pulumi.Input<String>? ipAddressRange;

  /// Creates a new [ExternalAccessRuleDestinationIpRange].
  /// [externalAddress] The name of an `ExternalAddress` resource.
  /// [ipAddressRange] An IP address range in the CIDR format.
  ExternalAccessRuleDestinationIpRange({
    this.externalAddress,
    this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAddress': ?externalAddress,
      'ipAddressRange': ?ipAddressRange,
    };
  }

  factory ExternalAccessRuleDestinationIpRange.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleDestinationIpRange(
      externalAddress: map['externalAddress'] == null ? null : (map['externalAddress'] as String).input(),
      ipAddressRange: map['ipAddressRange'] == null ? null : (map['ipAddressRange'] as String).input(),
    );
  }
}

