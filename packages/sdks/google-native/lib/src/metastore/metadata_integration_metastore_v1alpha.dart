// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_config_metastore_v1alpha.dart';
import 'dataplex_config.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationMetastoreV1alpha {
  /// Optional. The integration config for the Data Catalog service.
  final pulumi.Input<DataCatalogConfigMetastoreV1alpha>? dataCatalogConfig;
  /// The integration config for the Dataplex service.
  final pulumi.Input<DataplexConfig>? dataplexConfig;

  /// Creates a new [MetadataIntegrationMetastoreV1alpha].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  const MetadataIntegrationMetastoreV1alpha({
    this.dataCatalogConfig,
    this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': ?pulumi.Input.mapOptionalInputValue<DataCatalogConfigMetastoreV1alpha, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
      'dataplexConfig': ?pulumi.Input.mapOptionalInputValue<DataplexConfig, Map<String, dynamic>>(dataplexConfig, (value) => value.toMap()),
    };
  }

  factory MetadataIntegrationMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationMetastoreV1alpha(
      dataCatalogConfig: (() { final guardedValue = map['dataCatalogConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCatalogConfigMetastoreV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataplexConfig: (() { final guardedValue = map['dataplexConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataplexConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

