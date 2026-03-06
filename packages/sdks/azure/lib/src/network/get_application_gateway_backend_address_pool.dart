// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayBackendAddressPool {
  /// A list of FQDNs which are part of the Backend Address Pool.
  final pulumi.Input<List<String>> fqdns;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// A list of IP Addresses which are part of the Backend Address Pool.
  final pulumi.Input<List<String>> ipAddresses;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;

  /// Creates a new [GetApplicationGatewayBackendAddressPool].
  /// [fqdns] A list of FQDNs which are part of the Backend Address Pool.
  /// [id] The ID of the Rewrite Rule Set
  /// [ipAddresses] A list of IP Addresses which are part of the Backend Address Pool.
  /// [name] The name of this Application Gateway.
  const GetApplicationGatewayBackendAddressPool({
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
      fqdns: pulumi.Input.fromValue((map['fqdns'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

