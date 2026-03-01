// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcmFailback NIC details.
class InMageRcmFailbackNicDetailsResponse {
  /// The adapter type.
  final String adapterType;
  /// The mac address.
  final String macAddress;
  /// The network name.
  final String networkName;
  /// The IP address.
  final String sourceIpAddress;

  /// Creates a new [InMageRcmFailbackNicDetailsResponse].
  /// [adapterType] The adapter type.
  /// [macAddress] The mac address.
  /// [networkName] The network name.
  /// [sourceIpAddress] The IP address.
  InMageRcmFailbackNicDetailsResponse({
    required this.adapterType,
    required this.macAddress,
    required this.networkName,
    required this.sourceIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapterType': adapterType,
      'macAddress': macAddress,
      'networkName': networkName,
      'sourceIpAddress': sourceIpAddress,
    };
  }

  factory InMageRcmFailbackNicDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackNicDetailsResponse(
      adapterType: map['adapterType'] as String,
      macAddress: map['macAddress'] as String,
      networkName: map['networkName'] as String,
      sourceIpAddress: map['sourceIpAddress'] as String,
    );
  }
}

