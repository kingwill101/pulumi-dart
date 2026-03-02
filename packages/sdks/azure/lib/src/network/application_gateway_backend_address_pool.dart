// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayBackendAddressPool {
  /// A list of FQDN's which should be part of the Backend Address Pool.
  final pulumi.Input<List<String>>? fqdns;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// A list of IP Addresses which should be part of the Backend Address Pool.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The name of the Backend Address Pool.
  final pulumi.Input<String> name;

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
      fqdns: map['fqdns'] == null ? null : ((map['fqdns'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

