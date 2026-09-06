// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IPv6 Circuit Connection properties for global reach.
class Ipv6CircuitConnectionConfigResponse {
  /// /125 IP address space to carve out customer addresses for global reach.
  final pulumi.Input<String?>? addressPrefix;
  /// Express Route Circuit connection state.
  final pulumi.Input<String> circuitConnectionStatus;

  /// Creates a new [Ipv6CircuitConnectionConfigResponse].
  /// [addressPrefix] /125 IP address space to carve out customer addresses for global reach.
  /// [circuitConnectionStatus] Express Route Circuit connection state.
  const Ipv6CircuitConnectionConfigResponse({
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
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      circuitConnectionStatus: pulumi.Input.fromValue(map['circuitConnectionStatus'] as String),
    );
  }
}
