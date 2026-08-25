// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_iceberg_connection_properties_catalog_glue_iceberg_catalog.dart';
import 'goldengate_connection_properties_iceberg_connection_properties_catalog_nessie_iceberg_catalog.dart';
import 'goldengate_connection_properties_iceberg_connection_properties_catalog_polaris_iceberg_catalog.dart';
import 'goldengate_connection_properties_iceberg_connection_properties_catalog_rest_iceberg_catalog.dart';

class GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog {
  /// The type of Iceberg catalog.
  /// Possible values:
  /// GLUE
  /// HADOOP
  /// NESSIE
  /// POLARIS
  /// REST
  final pulumi.Input<String> catalogType;
  /// The Glue Iceberg catalog.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog?>? glueIcebergCatalog;
  /// The Nessie Iceberg catalog.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog?>? nessieIcebergCatalog;
  /// The Polaris Iceberg catalog.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog?>? polarisIcebergCatalog;
  /// The REST Iceberg catalog.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog?>? restIcebergCatalog;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog].
  /// [catalogType] The type of Iceberg catalog.
  /// [glueIcebergCatalog] The Glue Iceberg catalog.
  /// [nessieIcebergCatalog] The Nessie Iceberg catalog.
  /// [polarisIcebergCatalog] The Polaris Iceberg catalog.
  /// [restIcebergCatalog] The REST Iceberg catalog.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog({
    required this.catalogType,
    this.glueIcebergCatalog,
    this.nessieIcebergCatalog,
    this.polarisIcebergCatalog,
    this.restIcebergCatalog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogType': catalogType,
      'glueIcebergCatalog': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog, Map<String, dynamic>>(glueIcebergCatalog, (value) => value.toMap()),
      'nessieIcebergCatalog': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog, Map<String, dynamic>>(nessieIcebergCatalog, (value) => value.toMap()),
      'polarisIcebergCatalog': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog, Map<String, dynamic>>(polarisIcebergCatalog, (value) => value.toMap()),
      'restIcebergCatalog': ?pulumi.Input.mapOptionalInputValue<GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog, Map<String, dynamic>>(restIcebergCatalog, (value) => value.toMap()),
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog(
      catalogType: pulumi.Input.fromValue(map['catalogType'] as String),
      glueIcebergCatalog: (() { final guardedValue = map['glueIcebergCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nessieIcebergCatalog: (() { final guardedValue = map['nessieIcebergCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      polarisIcebergCatalog: (() { final guardedValue = map['polarisIcebergCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restIcebergCatalog: (() { final guardedValue = map['restIcebergCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
