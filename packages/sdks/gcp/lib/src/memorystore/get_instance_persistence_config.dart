// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_persistence_config_aof_config.dart';
import 'get_instance_persistence_config_rdb_config.dart';

class GetInstancePersistenceConfig {
  /// Configuration for AOF based persistence.
  final pulumi.Input<List<GetInstancePersistenceConfigAofConfig>> aofConfigs;
  /// Optional. Current persistence mode.
  /// Possible values:
  /// DISABLED
  /// RDB
  /// AOF Possible values: ["DISABLED", "RDB", "AOF"]
  final pulumi.Input<String> mode;
  /// Configuration for RDB based persistence.
  final pulumi.Input<List<GetInstancePersistenceConfigRdbConfig>> rdbConfigs;

  /// Creates a new [GetInstancePersistenceConfig].
  /// [aofConfigs] Configuration for AOF based persistence.
  /// [mode] Optional. Current persistence mode.
  /// [rdbConfigs] Configuration for RDB based persistence.
  const GetInstancePersistenceConfig({
    required this.aofConfigs,
    required this.mode,
    required this.rdbConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aofConfigs': pulumi.Input.mapInputValue<List<GetInstancePersistenceConfigAofConfig>, List<Map<String, dynamic>>>(aofConfigs, (value) => pulumi.Input.encodeList<GetInstancePersistenceConfigAofConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'rdbConfigs': pulumi.Input.mapInputValue<List<GetInstancePersistenceConfigRdbConfig>, List<Map<String, dynamic>>>(rdbConfigs, (value) => pulumi.Input.encodeList<GetInstancePersistenceConfigRdbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstancePersistenceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePersistenceConfig(
      aofConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancePersistenceConfigAofConfig>(map['aofConfigs']!, (value) => GetInstancePersistenceConfigAofConfig.fromMap((value as Map).cast<String, dynamic>()))),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      rdbConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancePersistenceConfigRdbConfig>(map['rdbConfigs']!, (value) => GetInstancePersistenceConfigRdbConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

