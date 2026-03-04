// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_persistence_config_aof_config.dart';
import 'cluster_persistence_config_rdb_config.dart';

class ClusterPersistenceConfig {
  /// AOF configuration. This field will be ignored if mode is not AOF.
  /// Structure is documented below.
  final pulumi.Input<ClusterPersistenceConfigAofConfig>? aofConfig;

  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// - DISABLED: 	Persistence (both backup and restore) is disabled for the cluster.
  /// - RDB: RDB based Persistence is enabled.
  /// - AOF: AOF based Persistence is enabled.
  /// Possible values are: `PERSISTENCE_MODE_UNSPECIFIED`, `DISABLED`, `RDB`, `AOF`.
  final pulumi.Input<String>? mode;

  /// RDB configuration. This field will be ignored if mode is not RDB.
  /// Structure is documented below.
  final pulumi.Input<ClusterPersistenceConfigRdbConfig>? rdbConfig;

  /// Creates a new [ClusterPersistenceConfig].
  /// [aofConfig] AOF configuration. This field will be ignored if mode is not AOF.
  /// [mode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbConfig] RDB configuration. This field will be ignored if mode is not RDB.
  ClusterPersistenceConfig({this.aofConfig, this.mode, this.rdbConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aofConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterPersistenceConfigAofConfig,
            Map<String, dynamic>
          >(aofConfig, (value) => value.toMap()),
      'mode': ?mode,
      'rdbConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterPersistenceConfigRdbConfig,
            Map<String, dynamic>
          >(rdbConfig, (value) => value.toMap()),
    };
  }

  factory ClusterPersistenceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPersistenceConfig(
      aofConfig: (() {
        final guardedValue = map['aofConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterPersistenceConfigAofConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rdbConfig: (() {
        final guardedValue = map['rdbConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterPersistenceConfigRdbConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
