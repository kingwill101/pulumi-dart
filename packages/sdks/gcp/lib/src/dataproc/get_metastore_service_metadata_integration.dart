// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_service_metadata_integration_data_catalog_config.dart';

class GetMetastoreServiceMetadataIntegration {
  /// The integration config for the Data Catalog service.
  final pulumi.Input<
    List<GetMetastoreServiceMetadataIntegrationDataCatalogConfig>
  >
  dataCatalogConfigs;

  /// Creates a new [GetMetastoreServiceMetadataIntegration].
  /// [dataCatalogConfigs] The integration config for the Data Catalog service.
  GetMetastoreServiceMetadataIntegration({required this.dataCatalogConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogConfigs':
          pulumi.Input.mapInputValue<
            List<GetMetastoreServiceMetadataIntegrationDataCatalogConfig>,
            List<Map<String, dynamic>>
          >(
            dataCatalogConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetMetastoreServiceMetadataIntegrationDataCatalogConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetMetastoreServiceMetadataIntegration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetastoreServiceMetadataIntegration(
      dataCatalogConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetMetastoreServiceMetadataIntegrationDataCatalogConfig
        >(
          map['dataCatalogConfigs']!,
          (value) =>
              GetMetastoreServiceMetadataIntegrationDataCatalogConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
