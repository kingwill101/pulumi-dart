// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZonePrimaryNameserver {
  /// Public IPv4 or IPv6 address of the primary nameserver.
  final pulumi.Input<String> address;

  /// Port of the primary nameserver.
  final pulumi.Input<int>? port;

  /// Transaction signature (TSIG) algorithm used to generate the TSIG key.
  final pulumi.Input<String>? tsigAlgorithm;

  /// Transaction signature (TSIG) key
  final pulumi.Input<String>? tsigKey;

  /// Creates a new [ZonePrimaryNameserver].
  /// [address] Public IPv4 or IPv6 address of the primary nameserver.
  /// [port] Port of the primary nameserver.
  /// [tsigAlgorithm] Transaction signature (TSIG) algorithm used to generate the TSIG key.
  /// [tsigKey] Transaction signature (TSIG) key
  ZonePrimaryNameserver({
    required this.address,
    this.port,
    this.tsigAlgorithm,
    this.tsigKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': ?port,
      'tsigAlgorithm': ?tsigAlgorithm,
      'tsigKey': ?tsigKey,
    };
  }

  factory ZonePrimaryNameserver.fromMap(Map<String, dynamic> map) {
    return ZonePrimaryNameserver(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tsigAlgorithm: (() {
        final guardedValue = map['tsigAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tsigKey: (() {
        final guardedValue = map['tsigKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
