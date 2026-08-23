// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog {
  /// The Polaris client ID.
  final pulumi.Input<String> clientId;
  /// The Polaris client secret.
  final pulumi.Input<String>? clientSecret;
  /// The catalog name within Polaris.
  final pulumi.Input<String> polarisCatalog;
  /// The Polaris principal role.
  final pulumi.Input<String> principalRole;
  /// The Polaris uri.
  final pulumi.Input<String> uri;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog].
  /// [clientId] The Polaris client ID.
  /// [clientSecret] The Polaris client secret.
  /// [polarisCatalog] The catalog name within Polaris.
  /// [principalRole] The Polaris principal role.
  /// [uri] The Polaris uri.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog({
    required this.clientId,
    this.clientSecret,
    required this.polarisCatalog,
    required this.principalRole,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'polarisCatalog': polarisCatalog,
      'principalRole': principalRole,
      'uri': uri,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      polarisCatalog: pulumi.Input.fromValue(map['polarisCatalog'] as String),
      principalRole: pulumi.Input.fromValue(map['principalRole'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
