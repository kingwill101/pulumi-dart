// ignore_for_file: unused_element, unnecessary_cast


/// A private IP address bound to the availability group listener.
class PrivateIPAddress {
  /// Private IP address bound to the availability group listener.
  final String? ipAddress;
  /// Subnet used to include private IP.
  final String? subnetResourceId;

  /// Creates a new [PrivateIPAddress].
  /// [ipAddress] Private IP address bound to the availability group listener.
  /// [subnetResourceId] Subnet used to include private IP.
  PrivateIPAddress({
    this.ipAddress,
    this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetResourceId': ?subnetResourceId,
    };
  }

  factory PrivateIPAddress.fromMap(Map<String, dynamic> map) {
    return PrivateIPAddress(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      subnetResourceId: map['subnetResourceId'] == null ? null : map['subnetResourceId'] as String,
    );
  }
}

