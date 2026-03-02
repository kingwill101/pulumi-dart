// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of IPConfigurationBgpPeeringAddress.
class IPConfigurationBgpPeeringAddressResponse {
  /// The list of custom BGP peering addresses which belong to IP configuration.
  final pulumi.Input<List<String>>? customBgpIpAddresses;
  /// The list of default BGP peering addresses which belong to IP configuration.
  final pulumi.Input<List<String>> defaultBgpIpAddresses;
  /// The ID of IP configuration which belongs to gateway.
  final pulumi.Input<String>? ipconfigurationId;
  /// The list of tunnel public IP addresses which belong to IP configuration.
  final pulumi.Input<List<String>> tunnelIpAddresses;

  /// Creates a new [IPConfigurationBgpPeeringAddressResponse].
  /// [customBgpIpAddresses] The list of custom BGP peering addresses which belong to IP configuration.
  /// [defaultBgpIpAddresses] The list of default BGP peering addresses which belong to IP configuration.
  /// [ipconfigurationId] The ID of IP configuration which belongs to gateway.
  /// [tunnelIpAddresses] The list of tunnel public IP addresses which belong to IP configuration.
  IPConfigurationBgpPeeringAddressResponse({
    this.customBgpIpAddresses,
    required this.defaultBgpIpAddresses,
    this.ipconfigurationId,
    required this.tunnelIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBgpIpAddresses': ?customBgpIpAddresses,
      'defaultBgpIpAddresses': defaultBgpIpAddresses,
      'ipconfigurationId': ?ipconfigurationId,
      'tunnelIpAddresses': tunnelIpAddresses,
    };
  }

  factory IPConfigurationBgpPeeringAddressResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationBgpPeeringAddressResponse(
      customBgpIpAddresses: map['customBgpIpAddresses'] == null ? null : ((map['customBgpIpAddresses'] as List).cast<String>()).input(),
      defaultBgpIpAddresses: ((map['defaultBgpIpAddresses'] as List).cast<String>()).input(),
      ipconfigurationId: map['ipconfigurationId'] == null ? null : (map['ipconfigurationId'] as String).input(),
      tunnelIpAddresses: ((map['tunnelIpAddresses'] as List).cast<String>()).input(),
    );
  }
}

