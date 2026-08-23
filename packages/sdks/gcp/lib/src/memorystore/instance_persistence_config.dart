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
  const InstancePersistenceConfig({
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
      aofConfig: (() { final guardedValue = map['aofConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePersistenceConfigAofConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbConfig: (() { final guardedValue = map['rdbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePersistenceConfigRdbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
