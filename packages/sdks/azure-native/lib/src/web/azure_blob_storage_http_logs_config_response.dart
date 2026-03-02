// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Http logs to azure blob storage configuration.
class AzureBlobStorageHttpLogsConfigResponse {
  /// True if configuration is enabled, false if it is disabled and null if configuration is not set.
  final pulumi.Input<bool>? enabled;
  /// Retention in days.
  /// Remove blobs older than X days.
  /// 0 or lower means no retention.
  final pulumi.Input<int>? retentionInDays;
  /// SAS url to a azure blob container with read/write/list/delete permissions.
  final pulumi.Input<String>? sasUrl;

  /// Creates a new [AzureBlobStorageHttpLogsConfigResponse].
  /// [enabled] True if configuration is enabled, false if it is disabled and null if configuration is not set.
  /// [retentionInDays] Retention in days.
  /// [sasUrl] SAS url to a azure blob container with read/write/list/delete permissions.
  AzureBlobStorageHttpLogsConfigResponse({
    this.enabled,
    this.retentionInDays,
    this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retentionInDays': ?retentionInDays,
      'sasUrl': ?sasUrl,
    };
  }

  factory AzureBlobStorageHttpLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageHttpLogsConfigResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays'] as int).input(),
      sasUrl: map['sasUrl'] == null ? null : (map['sasUrl'] as String).input(),
    );
  }
}

