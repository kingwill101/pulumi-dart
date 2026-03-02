// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPortAllowedAddressPair {
  /// The additional IP address.
  final pulumi.Input<String> ipAddress;
  /// The MAC address of the port.
  final pulumi.Input<String> macAddress;

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
      ipAddress: (map['ipAddress'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
    );
  }
}

