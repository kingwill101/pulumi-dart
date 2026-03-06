// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_metadata_integration_data_catalog_config.dart';

class MetastoreServiceMetadataIntegration {
  /// The integration config for the Data Catalog service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceMetadataIntegrationDataCatalogConfig> dataCatalogConfig;

  /// Creates a new [MetastoreServiceMetadataIntegration].
  /// [dataCatalogConfig] The integration config for the Data Catalog service.
  const MetastoreServiceMetadataIntegration({
    required this.dataCatalogConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfig': pulumi.Input.mapInputValue<MetastoreServiceMetadataIntegrationDataCatalogConfig, Map<String, dynamic>>(dataCatalogConfig, (value) => value.toMap()),
    };
  }

  factory MetastoreServiceMetadataIntegration.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceMetadataIntegration(
      dataCatalogConfig: pulumi.Input.fromValue(MetastoreServiceMetadataIntegrationDataCatalogConfig.fromMap((map['dataCatalogConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

