// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_data_catalog_maintenance_config_compaction.dart';
import 'r2_data_catalog_maintenance_config_snapshot_expiration.dart';

class R2DataCatalogMaintenanceConfig {
  /// Configures compaction for catalog maintenance.
  final pulumi.Input<R2DataCatalogMaintenanceConfigCompaction?>? compaction;
  /// Configures snapshot expiration settings.
  final pulumi.Input<R2DataCatalogMaintenanceConfigSnapshotExpiration?>? snapshotExpiration;

  /// Creates a new [R2DataCatalogMaintenanceConfig].
  /// [compaction] Configures compaction for catalog maintenance.
  /// [snapshotExpiration] Configures snapshot expiration settings.
  const R2DataCatalogMaintenanceConfig({
    this.compaction,
    this.snapshotExpiration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compaction': ?pulumi.Input.mapOptionalInputValue<R2DataCatalogMaintenanceConfigCompaction, Map<String, dynamic>>(compaction, (value) => value.toMap()),
      'snapshotExpiration': ?pulumi.Input.mapOptionalInputValue<R2DataCatalogMaintenanceConfigSnapshotExpiration, Map<String, dynamic>>(snapshotExpiration, (value) => value.toMap()),
    };
  }

  factory R2DataCatalogMaintenanceConfig.fromMap(Map<String, dynamic> map) {
    return R2DataCatalogMaintenanceConfig(
      compaction: (() { final guardedValue = map['compaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2DataCatalogMaintenanceConfigCompaction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotExpiration: (() { final guardedValue = map['snapshotExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2DataCatalogMaintenanceConfigSnapshotExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
