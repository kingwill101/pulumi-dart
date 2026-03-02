// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_level.dart';

/// Application logs to Azure table storage configuration.
class AzureTableStorageApplicationLogsConfig {
  /// Log level.
  final pulumi.Input<LogLevel>? level;
  /// SAS URL to an Azure table with add/query/delete permissions.
  final pulumi.Input<String> sasUrl;

  /// Creates a new [AzureTableStorageApplicationLogsConfig].
  /// [level] Log level.
  /// [sasUrl] SAS URL to an Azure table with add/query/delete permissions.
  AzureTableStorageApplicationLogsConfig({
    this.level,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?pulumi.Input.mapOptionalInputValue<LogLevel, String>(level, (value) => value.value),
      'sasUrl': sasUrl,
    };
  }

  factory AzureTableStorageApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return AzureTableStorageApplicationLogsConfig(
      level: map['level'] == null ? null : (LogLevel.fromValue(map['level'] as String)).input(),
      sasUrl: (map['sasUrl'] as String).input(),
    );
  }
}

