// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigMetastoreV1beta {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DataCatalogConfigMetastoreV1beta].
  /// [enabled] Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  DataCatalogConfigMetastoreV1beta({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DataCatalogConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfigMetastoreV1beta(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

