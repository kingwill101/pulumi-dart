// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Http logs to file system configuration.
class FileSystemHttpLogsConfig {
  /// True if configuration is enabled, false if it is disabled and null if configuration is not set.
  final pulumi.Input<bool>? enabled;
  /// Retention in days.
  /// Remove files older than X days.
  /// 0 or lower means no retention.
  final pulumi.Input<int>? retentionInDays;
  /// Maximum size in megabytes that http log files can use.
  /// When reached old log files will be removed to make space for new ones.
  /// Value can range between 25 and 100.
  final pulumi.Input<int>? retentionInMb;

  /// Creates a new [FileSystemHttpLogsConfig].
  /// [enabled] True if configuration is enabled, false if it is disabled and null if configuration is not set.
  /// [retentionInDays] Retention in days.
  /// [retentionInMb] Maximum size in megabytes that http log files can use.
  FileSystemHttpLogsConfig({
    this.enabled,
    this.retentionInDays,
    this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retentionInDays': ?retentionInDays,
      'retentionInMb': ?retentionInMb,
    };
  }

  factory FileSystemHttpLogsConfig.fromMap(Map<String, dynamic> map) {
    return FileSystemHttpLogsConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      retentionInMb: map['retentionInMb'] == null ? null : (map['retentionInMb']! as int).input(),
    );
  }
}

