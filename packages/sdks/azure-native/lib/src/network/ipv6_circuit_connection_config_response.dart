// ignore_for_file: unused_element, unnecessary_cast


/// IPv6 Circuit Connection properties for global reach.
class Ipv6CircuitConnectionConfigResponse {
  /// /125 IP address space to carve out customer addresses for global reach.
  final String? addressPrefix;
  /// Express Route Circuit connection state.
  final String circuitConnectionStatus;

  /// Creates a new [Ipv6CircuitConnectionConfigResponse].
  /// [addressPrefix] /125 IP address space to carve out customer addresses for global reach.
  /// [circuitConnectionStatus] Express Route Circuit connection state.
  Ipv6CircuitConnectionConfigResponse({
    this.addressPrefix,
    required this.circuitConnectionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'circuitConnectionStatus': circuitConnectionStatus,
    };
  }

  factory Ipv6CircuitConnectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return Ipv6CircuitConnectionConfigResponse(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      circuitConnectionStatus: map['circuitConnectionStatus'] as String,
    );
  }
}

