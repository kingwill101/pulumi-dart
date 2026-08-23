// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_iceberg_connection_properties_catalog.dart';
import 'goldengate_connection_properties_iceberg_connection_properties_storage.dart';

class GoldengateConnectionPropertiesIcebergConnectionProperties {
  /// The Iceberg catalog details.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog> catalog;
  /// The Iceberg storage details.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage> storage;
  /// The technology type of Iceberg connection.
  final pulumi.Input<String> technologyType;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionProperties].
  /// [catalog] The Iceberg catalog details.
  /// [storage] The Iceberg storage details.
  /// [technologyType] The technology type of Iceberg connection.
  const GoldengateConnectionPropertiesIcebergConnectionProperties({
    required this.catalog,
    required this.storage,
    required this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': pulumi.Input.mapInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog, Map<String, dynamic>>(catalog, (value) => value.toMap()),
      'storage': pulumi.Input.mapInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'technologyType': technologyType,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionProperties(
      catalog: pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog.fromMap((map['catalog']! as Map).cast<String, dynamic>())),
      storage: pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())),
      technologyType: pulumi.Input.fromValue(map['technologyType'] as String),
    );
  }
}
