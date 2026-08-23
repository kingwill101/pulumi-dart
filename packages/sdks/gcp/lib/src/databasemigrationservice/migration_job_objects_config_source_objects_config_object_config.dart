// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_objects_config_source_objects_config_object_config_object_identifier.dart';

class MigrationJobObjectsConfigSourceObjectsConfigObjectConfig {
  /// The identifier of the migration job object.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier>? objectIdentifier;

  /// Creates a new [MigrationJobObjectsConfigSourceObjectsConfigObjectConfig].
  /// [objectIdentifier] The identifier of the migration job object.
  const MigrationJobObjectsConfigSourceObjectsConfigObjectConfig({
    this.objectIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdentifier': ?pulumi.Input.mapOptionalInputValue<MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier, Map<String, dynamic>>(objectIdentifier, (value) => value.toMap()),
    };
  }

  factory MigrationJobObjectsConfigSourceObjectsConfigObjectConfig.fromMap(Map<String, dynamic> map) {
    return MigrationJobObjectsConfigSourceObjectsConfigObjectConfig(
      objectIdentifier: (() { final guardedValue = map['objectIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
