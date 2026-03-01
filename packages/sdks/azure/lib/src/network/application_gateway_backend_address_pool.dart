// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayBackendAddressPool {
  /// A list of FQDN's which should be part of the Backend Address Pool.
  final List<String>? fqdns;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// A list of IP Addresses which should be part of the Backend Address Pool.
  final List<String>? ipAddresses;
  /// The name of the Backend Address Pool.
  final String name;

  /// Creates a new [ApplicationGatewayBackendAddressPool].
  /// [fqdns] A list of FQDN's which should be part of the Backend Address Pool.
  /// [id] The ID of the Rewrite Rule Set
  /// [ipAddresses] A list of IP Addresses which should be part of the Backend Address Pool.
  /// [name] The name of the Backend Address Pool.
  ApplicationGatewayBackendAddressPool({
    this.fqdns,
    this.id,
    this.ipAddresses,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': ?fqdns,
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'name': name,
    };
  }

  factory ApplicationGatewayBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPool(
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

