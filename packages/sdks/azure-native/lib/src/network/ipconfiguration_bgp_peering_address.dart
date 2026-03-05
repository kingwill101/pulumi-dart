// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of IPConfigurationBgpPeeringAddress.
class IPConfigurationBgpPeeringAddress {
  /// The list of custom BGP peering addresses which belong to IP configuration.
  final pulumi.Input<List<String>>? customBgpIpAddresses;
  /// The ID of IP configuration which belongs to gateway.
  final pulumi.Input<String>? ipconfigurationId;

  /// Creates a new [IPConfigurationBgpPeeringAddress].
  /// [customBgpIpAddresses] The list of custom BGP peering addresses which belong to IP configuration.
  /// [ipconfigurationId] The ID of IP configuration which belongs to gateway.
  IPConfigurationBgpPeeringAddress({
    this.customBgpIpAddresses,
    this.ipconfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBgpIpAddresses': ?customBgpIpAddresses,
      'ipconfigurationId': ?ipconfigurationId,
    };
  }

  factory IPConfigurationBgpPeeringAddress.fromMap(Map<String, dynamic> map) {
    return IPConfigurationBgpPeeringAddress(
      customBgpIpAddresses: (() { final guardedValue = map['customBgpIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipconfigurationId: (() { final guardedValue = map['ipconfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

