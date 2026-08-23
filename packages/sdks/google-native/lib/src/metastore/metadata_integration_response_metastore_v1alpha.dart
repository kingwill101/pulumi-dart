// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_config_response_metastore_v1alpha.dart';
import 'dataplex_config_response.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponseMetastoreV1alpha {
  /// Optional. The integration config for the Data Catalog service.
  final pulumi.Input<DataCatalogConfigResponseMetastoreV1alpha> dataCatalogConfig;
  /// The integration config for the Dataplex service.
  final pulumi.Input<DataplexConfigResponse> dataplexConfig;

  /// Creates a new [MetadataIntegrationResponseMetastoreV1alpha].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  const MetadataIntegrationResponseMetastoreV1alpha({
    required this.dataCatalogConfig,
    required this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': pulumi.Input.mapInputValue<DataCatalogConfigResponseMetastoreV1alpha, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
      'dataplexConfig': pulumi.Input.mapInputValue<DataplexConfigResponse, Map<String, dynamic>>(dataplexConfig, (value) => value.toMap()),
    };
  }

  factory MetadataIntegrationResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationResponseMetastoreV1alpha(
      dataCatalogConfig: pulumi.Input.fromValue(DataCatalogConfigResponseMetastoreV1alpha.fromMap((map['dataCatalogConfig']! as Map).cast<String, dynamic>())),
      dataplexConfig: pulumi.Input.fromValue(DataplexConfigResponse.fromMap((map['dataplexConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
