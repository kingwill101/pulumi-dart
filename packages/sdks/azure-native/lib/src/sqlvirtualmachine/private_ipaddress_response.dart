// ignore_for_file: unused_element, unnecessary_cast


/// A private IP address bound to the availability group listener.
class PrivateIPAddressResponse {
  /// Private IP address bound to the availability group listener.
  final String? ipAddress;
  /// Subnet used to include private IP.
  final String? subnetResourceId;

  /// Creates a new [PrivateIPAddressResponse].
  /// [ipAddress] Private IP address bound to the availability group listener.
  /// [subnetResourceId] Subnet used to include private IP.
  PrivateIPAddressResponse({
    this.ipAddress,
    this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetResourceId': ?subnetResourceId,
    };
  }

  factory PrivateIPAddressResponse.fromMap(Map<String, dynamic> map) {
    return PrivateIPAddressResponse(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      subnetResourceId: map['subnetResourceId'] == null ? null : map['subnetResourceId'] as String,
    );
  }
}

