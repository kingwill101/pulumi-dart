// ignore_for_file: unused_element, unnecessary_cast


class GetExternalAccessRuleDestinationIpRange {
  /// The name of an 'ExternalAddress' resource.
  final String externalAddress;
  /// An IP address range in the CIDR format.
  final String ipAddressRange;

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

  factory GetExternalAccessRuleDestinationIpRange.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleDestinationIpRange(
      externalAddress: map['externalAddress'] as String,
      ipAddressRange: map['ipAddressRange'] as String,
    );
  }
}

