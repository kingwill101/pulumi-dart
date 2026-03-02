// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application logs azure blob storage configuration.
class AzureBlobStorageApplicationLogsConfigResponse {
  /// Log level.
  final pulumi.Input<String>? level;
  /// Retention in days.
  /// Remove blobs older than X days.
  /// 0 or lower means no retention.
  final pulumi.Input<int>? retentionInDays;
  /// SAS url to a azure blob container with read/write/list/delete permissions.
  final pulumi.Input<String>? sasUrl;

  /// Creates a new [AzureBlobStorageApplicationLogsConfigResponse].
  /// [level] Log level.
  /// [retentionInDays] Retention in days.
  /// [sasUrl] SAS url to a azure blob container with read/write/list/delete permissions.
  AzureBlobStorageApplicationLogsConfigResponse({
    this.level,
    this.retentionInDays,
    this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'retentionInDays': ?retentionInDays,
      'sasUrl': ?sasUrl,
    };
  }

  factory AzureBlobStorageApplicationLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageApplicationLogsConfigResponse(
      level: map['level'] == null ? null : (map['level']! as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      sasUrl: map['sasUrl'] == null ? null : (map['sasUrl']! as String).input(),
    );
  }
}

