// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingBigqueryExportSetting {
  /// (Output)
  /// The BigQuery dataset to export the data to.
  final pulumi.Input<String>? dataset;
  /// (Output)
  /// Whether the guardrail is enabled.
  final pulumi.Input<bool>? enabled;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingBigqueryExportSetting].
  /// [dataset] (Output)
  /// [enabled] (Output)
  /// [project] The ID of the project in which the resource belongs.
  AppVersionSnapshotAppLoggingSettingBigqueryExportSetting({
    this.dataset,
    this.enabled,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'enabled': ?enabled,
      'project': ?project,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingBigqueryExportSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingBigqueryExportSetting(
      dataset: map['dataset'] == null ? null : (map['dataset']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

