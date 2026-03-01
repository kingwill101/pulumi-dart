// ignore_for_file: unused_element, unnecessary_cast


class NetworkIpDhcpHostLease {
  /// Configures the expiration time of the DHCP lease for a host.
  final double expiry;
  /// Sets the unit of time for the lease expiry, such as seconds or minutes.
  final String? unit;

  /// Creates a new [NetworkIpDhcpHostLease].
  /// [expiry] Configures the expiration time of the DHCP lease for a host.
  /// [unit] Sets the unit of time for the lease expiry, such as seconds or minutes.
  NetworkIpDhcpHostLease({
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
      expiry: map['expiry'] as double,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

