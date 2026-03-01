// ignore_for_file: unused_element, unnecessary_cast

import 'log_level.dart';

/// Application logs azure blob storage configuration.
class AzureBlobStorageApplicationLogsConfig {
  /// Log level.
  final LogLevel? level;
  /// Retention in days.
  /// Remove blobs older than X days.
  /// 0 or lower means no retention.
  final int? retentionInDays;
  /// SAS url to a azure blob container with read/write/list/delete permissions.
  final String? sasUrl;

  /// Creates a new [AzureBlobStorageApplicationLogsConfig].
  /// [level] Log level.
  /// [retentionInDays] Retention in days.
  /// [sasUrl] SAS url to a azure blob container with read/write/list/delete permissions.
  AzureBlobStorageApplicationLogsConfig({
    this.level,
    this.retentionInDays,
    this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level == null ? null : level!.value,
      'retentionInDays': ?retentionInDays,
      'sasUrl': ?sasUrl,
    };
  }

  factory AzureBlobStorageApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageApplicationLogsConfig(
      level: map['level'] == null ? null : LogLevel.fromValue(map['level'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      sasUrl: map['sasUrl'] == null ? null : map['sasUrl'] as String,
    );
  }
}

