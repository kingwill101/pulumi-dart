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
  ServiceEndpoint({this.address, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'name': ?name};
  }

  factory ServiceEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceEndpoint(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
