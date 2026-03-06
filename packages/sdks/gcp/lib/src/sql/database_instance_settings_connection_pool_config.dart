// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_connection_pool_config_flag.dart';

class DatabaseInstanceSettingsConnectionPoolConfig {
  /// True if the manager connection pooling configuration is enabled.
  final pulumi.Input<bool>? connectionPoolingEnabled;
  /// List of connection pool configuration flags
  final pulumi.Input<List<DatabaseInstanceSettingsConnectionPoolConfigFlag>>? flags;

  /// Creates a new [DatabaseInstanceSettingsConnectionPoolConfig].
  /// [connectionPoolingEnabled] True if the manager connection pooling configuration is enabled.
  /// [flags] List of connection pool configuration flags
  const DatabaseInstanceSettingsConnectionPoolConfig({
    this.connectionPoolingEnabled,
    this.flags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPoolingEnabled': ?connectionPoolingEnabled,
      'flags': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceSettingsConnectionPoolConfigFlag>, List<Map<String, dynamic>>>(flags, (value) => pulumi.Input.encodeList<DatabaseInstanceSettingsConnectionPoolConfigFlag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseInstanceSettingsConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsConnectionPoolConfig(
      connectionPoolingEnabled: (() { final guardedValue = map['connectionPoolingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseInstanceSettingsConnectionPoolConfigFlag>(guardedValue, (value) => DatabaseInstanceSettingsConnectionPoolConfigFlag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

