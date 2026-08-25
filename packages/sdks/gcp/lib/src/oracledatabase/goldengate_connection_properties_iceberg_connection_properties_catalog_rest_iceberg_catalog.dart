// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog {
  /// The content of the configuration file containing additional properties for
  /// the REST catalog.
  final pulumi.Input<String?>? properties;
  /// The REST uri.
  final pulumi.Input<String> uri;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog].
  /// [properties] The content of the configuration file containing additional properties for
  /// [uri] The REST uri.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog({
    this.properties,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'uri': uri,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
