// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_objects_config_source_objects_config.dart';

class MigrationJobObjectsConfig {
  /// Configuration for the source objects to be migrated.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobObjectsConfigSourceObjectsConfig>? sourceObjectsConfig;

  /// Creates a new [MigrationJobObjectsConfig].
  /// [sourceObjectsConfig] Configuration for the source objects to be migrated.
  const MigrationJobObjectsConfig({
    this.sourceObjectsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceObjectsConfig': ?pulumi.Input.mapOptionalInputValue<MigrationJobObjectsConfigSourceObjectsConfig, Map<String, dynamic>>(sourceObjectsConfig, (value) => value.toMap()),
    };
  }

  factory MigrationJobObjectsConfig.fromMap(Map<String, dynamic> map) {
    return MigrationJobObjectsConfig(
      sourceObjectsConfig: (() { final guardedValue = map['sourceObjectsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobObjectsConfigSourceObjectsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
