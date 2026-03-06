// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkIpDhcpHostLease {
  /// Configures the expiration time of the DHCP lease for a host.
  final pulumi.Input<double> expiry;
  /// Sets the unit of time for the lease expiry, such as seconds or minutes.
  final pulumi.Input<String>? unit;

  /// Creates a new [NetworkIpDhcpHostLease].
  /// [expiry] Configures the expiration time of the DHCP lease for a host.
  /// [unit] Sets the unit of time for the lease expiry, such as seconds or minutes.
  const NetworkIpDhcpHostLease({
    required this.expiry,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'unit': ?unit,
    };
  }

  factory NetworkIpDhcpHostLease.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpHostLease(
      expiry: pulumi.Input.fromValue(map['expiry'] as double),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

