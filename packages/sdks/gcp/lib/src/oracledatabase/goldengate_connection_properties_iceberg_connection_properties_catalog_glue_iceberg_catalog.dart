// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog {
  /// The catalog ID of Glue.
  final pulumi.Input<String> glueId;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog].
  /// [glueId] The catalog ID of Glue.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog({
    required this.glueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glueId': glueId,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog(
      glueId: pulumi.Input.fromValue(map['glueId'] as String),
    );
  }
}
