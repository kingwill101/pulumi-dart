// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesVsockCid {
  /// Defines the address attribute for the CID of the vsock device.
  final String? address;
  /// Indicates whether the CID is automatically assigned for the vsock device.
  final String? auto;

  /// Creates a new [DomainDevicesVsockCid].
  /// [address] Defines the address attribute for the CID of the vsock device.
  /// [auto] Indicates whether the CID is automatically assigned for the vsock device.
  DomainDevicesVsockCid({
    this.address,
    this.auto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'auto': ?auto,
    };
  }

  factory DomainDevicesVsockCid.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsockCid(
      address: map['address'] == null ? null : map['address'] as String,
      auto: map['auto'] == null ? null : map['auto'] as String,
    );
  }
}

