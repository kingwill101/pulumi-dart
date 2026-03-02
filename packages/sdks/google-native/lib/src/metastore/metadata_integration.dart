// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_config.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegration {
  /// Optional. The integration config for the Data Catalog service.
  final pulumi.Input<DataCatalogConfig>? dataCatalogConfig;

  /// Creates a new [MetadataIntegration].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  MetadataIntegration({
    this.dataCatalogConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': ?pulumi.Input.mapOptionalInputValue<DataCatalogConfig, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
    };
  }

  factory MetadataIntegration.fromMap(Map<String, dynamic> map) {
    return MetadataIntegration(
      dataCatalogConfig: map['dataCatalogConfig'] == null ? null : (DataCatalogConfig.fromMap((map['dataCatalogConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

