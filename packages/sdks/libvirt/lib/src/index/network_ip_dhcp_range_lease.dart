// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkIpDhcpRangeLease {
  /// Configures the expiration time of the DHCP lease for a host.
  final pulumi.Input<double> expiry;
  /// Sets the unit of time for the lease expiry, such as seconds or minutes.
  final pulumi.Input<String>? unit;

  /// Creates a new [NetworkIpDhcpRangeLease].
  /// [expiry] Configures the expiration time of the DHCP lease for a host.
  /// [unit] Sets the unit of time for the lease expiry, such as seconds or minutes.
  NetworkIpDhcpRangeLease({
    required this.expiry,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'unit': ?unit,
    };
  }

  factory NetworkIpDhcpRangeLease.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpRangeLease(
      expiry: (map['expiry'] as double).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
    );
  }
}

