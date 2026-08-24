// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2DataCatalogMaintenanceConfigCompaction {
  /// Specifies the state of maintenance operations.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String> state;
  /// Sets the target file size for compaction in megabytes. Defaults to "128".
  /// Available values: "64", "128", "256", "512".
  final pulumi.Input<String> targetSizeMb;

  /// Creates a new [GetR2DataCatalogMaintenanceConfigCompaction].
  /// [state] Specifies the state of maintenance operations.
  /// [targetSizeMb] Sets the target file size for compaction in megabytes. Defaults to "128".
  const GetR2DataCatalogMaintenanceConfigCompaction({
    required this.state,
    required this.targetSizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'targetSizeMb': targetSizeMb,
    };
  }

  factory GetR2DataCatalogMaintenanceConfigCompaction.fromMap(Map<String, dynamic> map) {
    return GetR2DataCatalogMaintenanceConfigCompaction(
      state: pulumi.Input.fromValue(map['state'] as String),
      targetSizeMb: pulumi.Input.fromValue(map['targetSizeMb'] as String),
    );
  }
}
