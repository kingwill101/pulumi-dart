// ignore_for_file: unused_element, unnecessary_cast

import 'log_level.dart';

/// Application logs to Azure table storage configuration.
class AzureTableStorageApplicationLogsConfig {
  /// Log level.
  final LogLevel? level;
  /// SAS URL to an Azure table with add/query/delete permissions.
  final String sasUrl;

  /// Creates a new [AzureTableStorageApplicationLogsConfig].
  /// [level] Log level.
  /// [sasUrl] SAS URL to an Azure table with add/query/delete permissions.
  AzureTableStorageApplicationLogsConfig({
    this.level,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level == null ? null : level!.value,
      'sasUrl': sasUrl,
    };
  }

  factory AzureTableStorageApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return AzureTableStorageApplicationLogsConfig(
      level: map['level'] == null ? null : LogLevel.fromValue(map['level'] as String),
      sasUrl: map['sasUrl'] as String,
    );
  }
}

