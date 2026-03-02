// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A private IP address bound to the availability group listener.
class PrivateIPAddress {
  /// Private IP address bound to the availability group listener.
  final pulumi.Input<String>? ipAddress;
  /// Subnet used to include private IP.
  final pulumi.Input<String>? subnetResourceId;

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
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      subnetResourceId: map['subnetResourceId'] == null ? null : (map['subnetResourceId'] as String).input(),
    );
  }
}

