// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_persistence_config_aof_config.dart';
import 'get_cluster_persistence_config_rdb_config.dart';

class GetClusterPersistenceConfig {
  /// AOF configuration. This field will be ignored if mode is not AOF.
  final pulumi.Input<List<GetClusterPersistenceConfigAofConfig>> aofConfigs;
  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  ///
  /// - DISABLED: 	Persistence (both backup and restore) is disabled for the cluster.
  /// - RDB: RDB based Persistence is enabled.
  /// - AOF: AOF based Persistence is enabled. Possible values: ["PERSISTENCE_MODE_UNSPECIFIED", "DISABLED", "RDB", "AOF"]
  final pulumi.Input<String> mode;
  /// RDB configuration. This field will be ignored if mode is not RDB.
  final pulumi.Input<List<GetClusterPersistenceConfigRdbConfig>> rdbConfigs;

  /// Creates a new [GetClusterPersistenceConfig].
  /// [aofConfigs] AOF configuration. This field will be ignored if mode is not AOF.
  /// [mode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbConfigs] RDB configuration. This field will be ignored if mode is not RDB.
  GetClusterPersistenceConfig({
    required this.aofConfigs,
    required this.mode,
    required this.rdbConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aofConfigs': pulumi.Input.mapInputValue<List<GetClusterPersistenceConfigAofConfig>, List<Map<String, dynamic>>>(aofConfigs, (value) => pulumi.Input.encodeList<GetClusterPersistenceConfigAofConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'rdbConfigs': pulumi.Input.mapInputValue<List<GetClusterPersistenceConfigRdbConfig>, List<Map<String, dynamic>>>(rdbConfigs, (value) => pulumi.Input.encodeList<GetClusterPersistenceConfigRdbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterPersistenceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPersistenceConfig(
      aofConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterPersistenceConfigAofConfig>(map['aofConfigs']!, (value) => GetClusterPersistenceConfigAofConfig.fromMap((value as Map).cast<String, dynamic>()))),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      rdbConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterPersistenceConfigRdbConfig>(map['rdbConfigs']!, (value) => GetClusterPersistenceConfigRdbConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

