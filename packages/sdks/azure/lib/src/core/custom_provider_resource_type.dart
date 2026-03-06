// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomProviderResourceType {
  /// Specifies the endpoint of the route definition.
  final pulumi.Input<String> endpoint;
  /// Specifies the name of the route definition.
  final pulumi.Input<String> name;
  /// The routing type that is supported for the resource request. Valid values are `Proxy` and `Proxy,Cache`. Defaults to `Proxy`.
  final pulumi.Input<String>? routingType;

  /// Creates a new [CustomProviderResourceType].
  /// [endpoint] Specifies the endpoint of the route definition.
  /// [name] Specifies the name of the route definition.
  /// [routingType] The routing type that is supported for the resource request. Valid values are `Proxy` and `Proxy,Cache`. Defaults to `Proxy`.
  const CustomProviderResourceType({
    required this.endpoint,
    required this.name,
    this.routingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'name': name,
      'routingType': ?routingType,
    };
  }

  factory CustomProviderResourceType.fromMap(Map<String, dynamic> map) {
    return CustomProviderResourceType(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      routingType: (() { final guardedValue = map['routingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

