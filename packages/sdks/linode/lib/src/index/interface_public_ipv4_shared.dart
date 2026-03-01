// ignore_for_file: unused_element, unnecessary_cast


class InterfacePublicIpv4Shared {
  /// The assigned IPv4 address.
  final String? address;
  /// The ID of the Linode to assign this interface to.
  final int? linodeId;

  /// Creates a new [InterfacePublicIpv4Shared].
  /// [address] The assigned IPv4 address.
  /// [linodeId] The ID of the Linode to assign this interface to.
  InterfacePublicIpv4Shared({
    this.address,
    this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'linodeId': ?linodeId,
    };
  }

  factory InterfacePublicIpv4Shared.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4Shared(
      address: map['address'] == null ? null : map['address'] as String,
      linodeId: map['linodeId'] == null ? null : map['linodeId'] as int,
    );
  }
}

