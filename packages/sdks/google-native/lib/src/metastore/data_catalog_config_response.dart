// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigResponse {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final pulumi.Input<bool> enabled;

  /// Creates a new [DataCatalogConfigResponse].
  /// [enabled] Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  const DataCatalogConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DataCatalogConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
