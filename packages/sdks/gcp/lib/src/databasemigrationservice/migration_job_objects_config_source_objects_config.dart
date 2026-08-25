// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_objects_config_source_objects_config_object_config.dart';

class MigrationJobObjectsConfigSourceObjectsConfig {
  /// The list of objects to migrate. Should only be set when
  /// `objectsSelectionType` is `SPECIFIED_OBJECTS`.
  /// Structure is documented below.
  final pulumi.Input<List<MigrationJobObjectsConfigSourceObjectsConfigObjectConfig>?>? objectConfigs;
  /// The objects selection type of the migration job. When set to
  /// `SPECIFIED_OBJECTS`, only the objects listed in `objectConfigs` are
  /// migrated. When set to `ALL_OBJECTS`, all objects available on the
  /// source are migrated.
  /// Possible values are: `ALL_OBJECTS`, `SPECIFIED_OBJECTS`.
  final pulumi.Input<String?>? objectsSelectionType;

  /// Creates a new [MigrationJobObjectsConfigSourceObjectsConfig].
  /// [objectConfigs] The list of objects to migrate. Should only be set when
  /// [objectsSelectionType] The objects selection type of the migration job. When set to
  const MigrationJobObjectsConfigSourceObjectsConfig({
    this.objectConfigs,
    this.objectsSelectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectConfigs': ?pulumi.Input.mapOptionalInputValue<List<MigrationJobObjectsConfigSourceObjectsConfigObjectConfig>, List<Map<String, dynamic>>>(objectConfigs, (value) => pulumi.Input.encodeList<MigrationJobObjectsConfigSourceObjectsConfigObjectConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objectsSelectionType': ?objectsSelectionType,
    };
  }

  factory MigrationJobObjectsConfigSourceObjectsConfig.fromMap(Map<String, dynamic> map) {
    return MigrationJobObjectsConfigSourceObjectsConfig(
      objectConfigs: (() { final guardedValue = map['objectConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationJobObjectsConfigSourceObjectsConfigObjectConfig>(guardedValue, (value) => MigrationJobObjectsConfigSourceObjectsConfigObjectConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      objectsSelectionType: (() { final guardedValue = map['objectsSelectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
