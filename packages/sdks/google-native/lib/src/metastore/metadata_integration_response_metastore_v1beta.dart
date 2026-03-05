// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_config_response_metastore_v1beta.dart';
import 'dataplex_config_response_metastore_v1beta.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponseMetastoreV1beta {
  /// Optional. The integration config for the Data Catalog service.
  final pulumi.Input<DataCatalogConfigResponseMetastoreV1beta> dataCatalogConfig;
  /// The integration config for the Dataplex service.
  final pulumi.Input<DataplexConfigResponseMetastoreV1beta> dataplexConfig;

  /// Creates a new [MetadataIntegrationResponseMetastoreV1beta].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  MetadataIntegrationResponseMetastoreV1beta({
    required this.dataCatalogConfig,
    required this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': pulumi.Input.mapInputValue<DataCatalogConfigResponseMetastoreV1beta, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
      'dataplexConfig': pulumi.Input.mapInputValue<DataplexConfigResponseMetastoreV1beta, Map<String, dynamic>>(dataplexConfig, (value) => value.toMap()),
    };
  }

  factory MetadataIntegrationResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationResponseMetastoreV1beta(
      dataCatalogConfig: pulumi.Input.fromValue(DataCatalogConfigResponseMetastoreV1beta.fromMap((map['dataCatalogConfig']! as Map).cast<String, dynamic>())),
      dataplexConfig: pulumi.Input.fromValue(DataplexConfigResponseMetastoreV1beta.fromMap((map['dataplexConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

