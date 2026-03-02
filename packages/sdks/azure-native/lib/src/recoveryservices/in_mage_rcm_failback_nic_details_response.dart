// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcmFailback NIC details.
class InMageRcmFailbackNicDetailsResponse {
  /// The adapter type.
  final pulumi.Input<String> adapterType;
  /// The mac address.
  final pulumi.Input<String> macAddress;
  /// The network name.
  final pulumi.Input<String> networkName;
  /// The IP address.
  final pulumi.Input<String> sourceIpAddress;

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
      adapterType: (map['adapterType'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      networkName: (map['networkName'] as String).input(),
      sourceIpAddress: (map['sourceIpAddress'] as String).input(),
    );
  }
}

