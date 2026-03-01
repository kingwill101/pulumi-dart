// ignore_for_file: unused_element, unnecessary_cast


class GetPortAllowedAddressPair {
  /// The additional IP address.
  final String ipAddress;
  /// The MAC address of the port.
  final String macAddress;

  /// Creates a new [GetPortAllowedAddressPair].
  /// [ipAddress] The additional IP address.
  /// [macAddress] The MAC address of the port.
  GetPortAllowedAddressPair({
    required this.ipAddress,
    required this.macAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'macAddress': macAddress,
    };
  }

  factory GetPortAllowedAddressPair.fromMap(Map<String, dynamic> map) {
    return GetPortAllowedAddressPair(
      ipAddress: map['ipAddress'] as String,
      macAddress: map['macAddress'] as String,
    );
  }
}

