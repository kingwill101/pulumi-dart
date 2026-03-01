// ignore_for_file: unused_element, unnecessary_cast

import 'instance_persistence_config_aof_config.dart';
import 'instance_persistence_config_rdb_config.dart';

class InstancePersistenceConfig {
  /// Configuration for AOF based persistence.
  /// Structure is documented below.
  final InstancePersistenceConfigAofConfig? aofConfig;
  /// Optional. Current persistence mode.
  /// Possible values:
  /// DISABLED
  /// RDB
  /// AOF
  /// Possible values are: `DISABLED`, `RDB`, `AOF`.
  final String? mode;
  /// Configuration for RDB based persistence.
  /// Structure is documented below.
  final InstancePersistenceConfigRdbConfig? rdbConfig;

  /// Creates a new [InstancePersistenceConfig].
  /// [aofConfig] Configuration for AOF based persistence.
  /// [mode] Optional. Current persistence mode.
  /// [rdbConfig] Configuration for RDB based persistence.
  InstancePersistenceConfig({
    this.aofConfig,
    this.mode,
    this.rdbConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aofConfig': ?aofConfig == null ? null : aofConfig!.toMap(),
      'mode': ?mode,
      'rdbConfig': ?rdbConfig == null ? null : rdbConfig!.toMap(),
    };
  }

  factory InstancePersistenceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfig(
      aofConfig: map['aofConfig'] == null ? null : InstancePersistenceConfigAofConfig.fromMap((map['aofConfig'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null ? null : map['mode'] as String,
      rdbConfig: map['rdbConfig'] == null ? null : InstancePersistenceConfigRdbConfig.fromMap((map['rdbConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

