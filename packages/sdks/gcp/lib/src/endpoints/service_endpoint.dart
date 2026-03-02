// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceEndpoint {
  /// The FQDN of the endpoint as described in the config.
  final pulumi.Input<String>? address;
  /// The simple name of the endpoint as described in the config.
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceEndpoint].
  /// [address] The FQDN of the endpoint as described in the config.
  /// [name] The simple name of the endpoint as described in the config.
  ServiceEndpoint({
    this.address,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'name': ?name,
    };
  }

  factory ServiceEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceEndpoint(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

