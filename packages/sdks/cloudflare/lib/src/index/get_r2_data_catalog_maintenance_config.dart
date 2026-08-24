// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_data_catalog_maintenance_config_compaction.dart';
import 'get_r2_data_catalog_maintenance_config_snapshot_expiration.dart';

class GetR2DataCatalogMaintenanceConfig {
  /// Configures compaction for catalog maintenance.
  final pulumi.Input<GetR2DataCatalogMaintenanceConfigCompaction> compaction;
  /// Configures snapshot expiration settings.
  final pulumi.Input<GetR2DataCatalogMaintenanceConfigSnapshotExpiration> snapshotExpiration;

  /// Creates a new [GetR2DataCatalogMaintenanceConfig].
  /// [compaction] Configures compaction for catalog maintenance.
  /// [snapshotExpiration] Configures snapshot expiration settings.
  const GetR2DataCatalogMaintenanceConfig({
    required this.compaction,
    required this.snapshotExpiration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compaction': pulumi.Input.mapInputValue<GetR2DataCatalogMaintenanceConfigCompaction, Map<String, dynamic>>(compaction, (value) => value.toMap()),
      'snapshotExpiration': pulumi.Input.mapInputValue<GetR2DataCatalogMaintenanceConfigSnapshotExpiration, Map<String, dynamic>>(snapshotExpiration, (value) => value.toMap()),
    };
  }

  factory GetR2DataCatalogMaintenanceConfig.fromMap(Map<String, dynamic> map) {
    return GetR2DataCatalogMaintenanceConfig(
      compaction: pulumi.Input.fromValue(GetR2DataCatalogMaintenanceConfigCompaction.fromMap((map['compaction']! as Map).cast<String, dynamic>())),
      snapshotExpiration: pulumi.Input.fromValue(GetR2DataCatalogMaintenanceConfigSnapshotExpiration.fromMap((map['snapshotExpiration']! as Map).cast<String, dynamic>())),
    );
  }
}
