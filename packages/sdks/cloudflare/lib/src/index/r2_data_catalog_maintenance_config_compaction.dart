// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2DataCatalogMaintenanceConfigCompaction {
  /// Specifies the state of maintenance operations.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? state;
  /// Sets the target file size for compaction in megabytes. Defaults to "128".
  /// Available values: "64", "128", "256", "512".
  final pulumi.Input<String?>? targetSizeMb;

  /// Creates a new [R2DataCatalogMaintenanceConfigCompaction].
  /// [state] Specifies the state of maintenance operations.
  /// [targetSizeMb] Sets the target file size for compaction in megabytes. Defaults to "128".
  const R2DataCatalogMaintenanceConfigCompaction({
    this.state,
    this.targetSizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'targetSizeMb': ?targetSizeMb,
    };
  }

  factory R2DataCatalogMaintenanceConfigCompaction.fromMap(Map<String, dynamic> map) {
    return R2DataCatalogMaintenanceConfigCompaction(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSizeMb: (() { final guardedValue = map['targetSizeMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
