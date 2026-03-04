// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_level.dart';

/// Application logs azure blob storage configuration.
class AzureBlobStorageApplicationLogsConfig {
  /// Log level.
  final pulumi.Input<LogLevel>? level;

  /// Retention in days.
  /// Remove blobs older than X days.
  /// 0 or lower means no retention.
  final pulumi.Input<int>? retentionInDays;

  /// SAS url to a azure blob container with read/write/list/delete permissions.
  final pulumi.Input<String>? sasUrl;

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
      'level': ?pulumi.Input.mapOptionalInputValue<LogLevel, String>(
        level,
        (value) => value.wireValue,
      ),
      'retentionInDays': ?retentionInDays,
      'sasUrl': ?sasUrl,
    };
  }

  factory AzureBlobStorageApplicationLogsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureBlobStorageApplicationLogsConfig(
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogLevel.fromValue(guardedValue as String),
        );
      })(),
      retentionInDays: (() {
        final guardedValue = map['retentionInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sasUrl: (() {
        final guardedValue = map['sasUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
