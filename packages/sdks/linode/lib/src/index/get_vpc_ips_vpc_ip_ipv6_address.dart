// ignore_for_file: unused_element, unnecessary_cast


class GetVpcIpsVpcIpIpv6Address {
  /// A specific address within the prefix that the interface is expected to autoconfigure through SLAAC.
  final String slaacAddress;

  /// Creates a new [GetVpcIpsVpcIpIpv6Address].
  /// [slaacAddress] A specific address within the prefix that the interface is expected to autoconfigure through SLAAC.
  GetVpcIpsVpcIpIpv6Address({
    required this.slaacAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slaacAddress': slaacAddress,
    };
  }

  factory GetVpcIpsVpcIpIpv6Address.fromMap(Map<String, dynamic> map) {
    return GetVpcIpsVpcIpIpv6Address(
      slaacAddress: map['slaacAddress'] as String,
    );
  }
}

