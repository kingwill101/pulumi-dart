// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a public IP address
class PublicIPAddressSkuInterfaceEndpointResponse {
  /// Name of a public IP address SKU.
  final pulumi.Input<String>? name;

  /// Creates a new [PublicIPAddressSkuInterfaceEndpointResponse].
  /// [name] Name of a public IP address SKU.
  const PublicIPAddressSkuInterfaceEndpointResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PublicIPAddressSkuInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressSkuInterfaceEndpointResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
