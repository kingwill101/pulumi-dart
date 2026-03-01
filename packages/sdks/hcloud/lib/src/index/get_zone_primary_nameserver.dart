// ignore_for_file: unused_element, unnecessary_cast


class GetZonePrimaryNameserver {
  /// Public IPv4 or IPv6 address of the primary nameserver.
  final String address;
  /// Port of the primary nameserver.
  final int port;
  /// Transaction signature (TSIG) algorithm used to generate the TSIG key.
  final String tsigAlgorithm;
  /// Transaction signature (TSIG) key
  final String tsigKey;

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
      address: map['address'] as String,
      port: map['port'] as int,
      tsigAlgorithm: map['tsigAlgorithm'] as String,
      tsigKey: map['tsigKey'] as String,
    );
  }
}

