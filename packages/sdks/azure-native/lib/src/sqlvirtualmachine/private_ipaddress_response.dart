// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A private IP address bound to the availability group listener.
class PrivateIPAddressResponse {
  /// Private IP address bound to the availability group listener.
  final pulumi.Input<String>? ipAddress;
  /// Subnet used to include private IP.
  final pulumi.Input<String>? subnetResourceId;

  /// Creates a new [PrivateIPAddressResponse].
  /// [ipAddress] Private IP address bound to the availability group listener.
  /// [subnetResourceId] Subnet used to include private IP.
  const PrivateIPAddressResponse({
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
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetResourceId: (() { final guardedValue = map['subnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

