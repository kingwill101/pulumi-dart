// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PortAllowedAddressPair {
  /// The additional IP address.
  final pulumi.Input<String> ipAddress;

  /// The additional MAC address.
  final pulumi.Input<String>? macAddress;

  /// Creates a new [PortAllowedAddressPair].
  /// [ipAddress] The additional IP address.
  /// [macAddress] The additional MAC address.
  PortAllowedAddressPair({required this.ipAddress, this.macAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ipAddress, 'macAddress': ?macAddress};
  }

  factory PortAllowedAddressPair.fromMap(Map<String, dynamic> map) {
    return PortAllowedAddressPair(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      macAddress: (() {
        final guardedValue = map['macAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
