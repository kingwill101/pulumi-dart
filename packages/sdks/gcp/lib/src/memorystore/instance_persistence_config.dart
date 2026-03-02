// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_persistence_config_aof_config.dart';
import 'instance_persistence_config_rdb_config.dart';

class InstancePersistenceConfig {
  /// Configuration for AOF based persistence.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfigAofConfig>? aofConfig;
  /// Optional. Current persistence mode.
  /// Possible values:
  /// DISABLED
  /// RDB
  /// AOF
  /// Possible values are: `DISABLED`, `RDB`, `AOF`.
  final pulumi.Input<String>? mode;
  /// Configuration for RDB based persistence.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfigRdbConfig>? rdbConfig;

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
      'aofConfig': ?pulumi.Input.mapOptionalInputValue<InstancePersistenceConfigAofConfig, Map<String, dynamic>>(aofConfig, (value) => value.toMap()),
      'mode': ?mode,
      'rdbConfig': ?pulumi.Input.mapOptionalInputValue<InstancePersistenceConfigRdbConfig, Map<String, dynamic>>(rdbConfig, (value) => value.toMap()),
    };
  }

  factory InstancePersistenceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfig(
      aofConfig: map['aofConfig'] == null ? null : (InstancePersistenceConfigAofConfig.fromMap((map['aofConfig']! as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      rdbConfig: map['rdbConfig'] == null ? null : (InstancePersistenceConfigRdbConfig.fromMap((map['rdbConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

