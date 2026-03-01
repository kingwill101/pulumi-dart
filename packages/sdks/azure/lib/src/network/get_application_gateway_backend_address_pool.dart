// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayBackendAddressPool {
  /// A list of FQDNs which are part of the Backend Address Pool.
  final List<String> fqdns;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// A list of IP Addresses which are part of the Backend Address Pool.
  final List<String> ipAddresses;
  /// The name of this Application Gateway.
  final String name;

  /// Creates a new [GetApplicationGatewayBackendAddressPool].
  /// [fqdns] A list of FQDNs which are part of the Backend Address Pool.
  /// [id] The ID of the Rewrite Rule Set
  /// [ipAddresses] A list of IP Addresses which are part of the Backend Address Pool.
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayBackendAddressPool({
    required this.fqdns,
    required this.id,
    required this.ipAddresses,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': fqdns,
      'id': id,
      'ipAddresses': ipAddresses,
      'name': name,
    };
  }

  factory GetApplicationGatewayBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendAddressPool(
      fqdns: (map['fqdns'] as List).cast<String>(),
      id: map['id'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

