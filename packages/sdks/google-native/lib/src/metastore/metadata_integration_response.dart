// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_config_response.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponse {
  /// Optional. The integration config for the Data Catalog service.
  final pulumi.Input<DataCatalogConfigResponse> dataCatalogConfig;

  /// Creates a new [MetadataIntegrationResponse].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  const MetadataIntegrationResponse({
    required this.dataCatalogConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': pulumi.Input.mapInputValue<DataCatalogConfigResponse, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
    };
  }

  factory MetadataIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationResponse(
      dataCatalogConfig: pulumi.Input.fromValue(DataCatalogConfigResponse.fromMap((map['dataCatalogConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

