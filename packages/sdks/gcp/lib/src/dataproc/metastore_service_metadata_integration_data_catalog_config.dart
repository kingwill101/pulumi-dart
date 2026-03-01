// ignore_for_file: unused_element, unnecessary_cast


class MetastoreServiceMetadataIntegrationDataCatalogConfig {
  /// Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool enabled;

  /// Creates a new [MetastoreServiceMetadataIntegrationDataCatalogConfig].
  /// [enabled] Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  MetastoreServiceMetadataIntegrationDataCatalogConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory MetastoreServiceMetadataIntegrationDataCatalogConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceMetadataIntegrationDataCatalogConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

