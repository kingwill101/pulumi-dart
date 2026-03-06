// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application logs to Azure table storage configuration.
class AzureTableStorageApplicationLogsConfigResponse {
  /// Log level.
  final pulumi.Input<String>? level;
  /// SAS URL to an Azure table with add/query/delete permissions.
  final pulumi.Input<String> sasUrl;

  /// Creates a new [AzureTableStorageApplicationLogsConfigResponse].
  /// [level] Log level.
  /// [sasUrl] SAS URL to an Azure table with add/query/delete permissions.
  const AzureTableStorageApplicationLogsConfigResponse({
    this.level,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'sasUrl': sasUrl,
    };
  }

  factory AzureTableStorageApplicationLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return AzureTableStorageApplicationLogsConfigResponse(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasUrl: pulumi.Input.fromValue(map['sasUrl'] as String),
    );
  }
}

