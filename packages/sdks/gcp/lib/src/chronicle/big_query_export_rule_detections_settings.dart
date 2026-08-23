// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BigQueryExportRuleDetectionsSettings {
  /// (Output)
  /// The data freshness of the given export which represents the time bucket at
  /// which the latest event was exported.
  final pulumi.Input<String>? dataFreshnessTime;
  /// (Output)
  /// The stored data volume of all the exports.
  final pulumi.Input<String>? dataVolume;
  /// Whether the data source is enabled for export.
  final pulumi.Input<bool> enabled;
  /// (Output)
  /// The latest export job state.
  final pulumi.Input<String>? latestExportJobState;
  /// The retention period for the data source in days.
  final pulumi.Input<int> retentionDays;

  /// Creates a new [BigQueryExportRuleDetectionsSettings].
  /// [dataFreshnessTime] (Output)
  /// [dataVolume] (Output)
  /// [enabled] Whether the data source is enabled for export.
  /// [latestExportJobState] (Output)
  /// [retentionDays] The retention period for the data source in days.
  const BigQueryExportRuleDetectionsSettings({
    this.dataFreshnessTime,
    this.dataVolume,
    required this.enabled,
    this.latestExportJobState,
    required this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFreshnessTime': ?dataFreshnessTime,
      'dataVolume': ?dataVolume,
      'enabled': enabled,
      'latestExportJobState': ?latestExportJobState,
      'retentionDays': retentionDays,
    };
  }

  factory BigQueryExportRuleDetectionsSettings.fromMap(Map<String, dynamic> map) {
    return BigQueryExportRuleDetectionsSettings(
      dataFreshnessTime: (() { final guardedValue = map['dataFreshnessTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataVolume: (() { final guardedValue = map['dataVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      latestExportJobState: (() { final guardedValue = map['latestExportJobState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
    );
  }
}
