// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_setting_connection_pool_config_flag.dart';

class GetDatabaseInstancesInstanceSettingConnectionPoolConfig {
  /// Whether Managed Connection Pool is enabled for this instance.
  final pulumi.Input<bool> connectionPoolingEnabled;
  /// List of connection pool configuration flags
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag>> flags;

  /// Creates a new [GetDatabaseInstancesInstanceSettingConnectionPoolConfig].
  /// [connectionPoolingEnabled] Whether Managed Connection Pool is enabled for this instance.
  /// [flags] List of connection pool configuration flags
  GetDatabaseInstancesInstanceSettingConnectionPoolConfig({
    required this.connectionPoolingEnabled,
    required this.flags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPoolingEnabled': connectionPoolingEnabled,
      'flags': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag>, List<Map<String, dynamic>>>(flags, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDatabaseInstancesInstanceSettingConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingConnectionPoolConfig(
      connectionPoolingEnabled: pulumi.Input.fromValue(map['connectionPoolingEnabled'] as bool),
      flags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag>(map['flags']!, (value) => GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

