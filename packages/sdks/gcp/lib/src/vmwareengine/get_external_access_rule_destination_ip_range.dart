// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExternalAccessRuleDestinationIpRange {
  /// The name of an 'ExternalAddress' resource.
  final pulumi.Input<String> externalAddress;

  /// An IP address range in the CIDR format.
  final pulumi.Input<String> ipAddressRange;

  /// Creates a new [GetExternalAccessRuleDestinationIpRange].
  /// [externalAddress] The name of an 'ExternalAddress' resource.
  /// [ipAddressRange] An IP address range in the CIDR format.
  GetExternalAccessRuleDestinationIpRange({
    required this.externalAddress,
    required this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAddress': externalAddress,
      'ipAddressRange': ipAddressRange,
    };
  }

  factory GetExternalAccessRuleDestinationIpRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetExternalAccessRuleDestinationIpRange(
      externalAddress: pulumi.Input.fromValue(map['externalAddress'] as String),
      ipAddressRange: pulumi.Input.fromValue(map['ipAddressRange'] as String),
    );
  }
}
