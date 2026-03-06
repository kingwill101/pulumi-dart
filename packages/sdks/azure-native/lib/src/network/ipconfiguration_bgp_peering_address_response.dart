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
  const IPConfigurationBgpPeeringAddressResponse({
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
      customBgpIpAddresses: (() { final guardedValue = map['customBgpIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultBgpIpAddresses: pulumi.Input.fromValue((map['defaultBgpIpAddresses'] as List).cast<String>()),
      ipconfigurationId: (() { final guardedValue = map['ipconfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelIpAddresses: pulumi.Input.fromValue((map['tunnelIpAddresses'] as List).cast<String>()),
    );
  }
}

