// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_config_metastore_v1beta.dart';
import 'dataplex_config_metastore_v1beta.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationMetastoreV1beta {
  /// Optional. The integration config for the Data Catalog service.
  final pulumi.Input<DataCatalogConfigMetastoreV1beta>? dataCatalogConfig;
  /// The integration config for the Dataplex service.
  final pulumi.Input<DataplexConfigMetastoreV1beta>? dataplexConfig;

  /// Creates a new [MetadataIntegrationMetastoreV1beta].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  const MetadataIntegrationMetastoreV1beta({
    this.dataCatalogConfig,
    this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': ?pulumi.Input.mapOptionalInputValue<DataCatalogConfigMetastoreV1beta, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
      'dataplexConfig': ?pulumi.Input.mapOptionalInputValue<DataplexConfigMetastoreV1beta, Map<String, dynamic>>(dataplexConfig, (value) => value.toMap()),
    };
  }

  factory MetadataIntegrationMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationMetastoreV1beta(
      dataCatalogConfig: (() { final guardedValue = map['dataCatalogConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCatalogConfigMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataplexConfig: (() { final guardedValue = map['dataplexConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataplexConfigMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
