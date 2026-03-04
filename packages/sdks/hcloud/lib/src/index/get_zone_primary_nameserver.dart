// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonePrimaryNameserver {
  /// Public IPv4 or IPv6 address of the primary nameserver.
  final pulumi.Input<String> address;

  /// Port of the primary nameserver.
  final pulumi.Input<int> port;

  /// Transaction signature (TSIG) algorithm used to generate the TSIG key.
  final pulumi.Input<String> tsigAlgorithm;

  /// Transaction signature (TSIG) key
  final pulumi.Input<String> tsigKey;

  /// Creates a new [GetZonePrimaryNameserver].
  /// [address] Public IPv4 or IPv6 address of the primary nameserver.
  /// [port] Port of the primary nameserver.
  /// [tsigAlgorithm] Transaction signature (TSIG) algorithm used to generate the TSIG key.
  /// [tsigKey] Transaction signature (TSIG) key
  GetZonePrimaryNameserver({
    required this.address,
    required this.port,
    required this.tsigAlgorithm,
    required this.tsigKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
      'tsigAlgorithm': tsigAlgorithm,
      'tsigKey': tsigKey,
    };
  }

  factory GetZonePrimaryNameserver.fromMap(Map<String, dynamic> map) {
    return GetZonePrimaryNameserver(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      tsigAlgorithm: pulumi.Input.fromValue(map['tsigAlgorithm'] as String),
      tsigKey: pulumi.Input.fromValue(map['tsigKey'] as String),
    );
  }
}
