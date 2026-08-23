// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLoggingSettingsBigqueryExportSettings {
  /// The BigQuery dataset to export the data to.
  final pulumi.Input<String>? dataset;
  /// Indicates whether the BigQuery export is enabled.
  final pulumi.Input<bool>? enabled;
  /// The project ID of the BigQuery dataset to export the data to.
  /// Note: If the BigQuery dataset is in a different project from the app, you should grant
  /// roles/bigquery.admin role to the CES service agent service-&lt;PROJECT-
  /// NUMBER&gt;@gcp-sa-ces.iam.gserviceaccount.com.
  final pulumi.Input<String>? project;

  /// Creates a new [AppLoggingSettingsBigqueryExportSettings].
  /// [dataset] The BigQuery dataset to export the data to.
  /// [enabled] Indicates whether the BigQuery export is enabled.
  /// [project] The project ID of the BigQuery dataset to export the data to.
  const AppLoggingSettingsBigqueryExportSettings({
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

  factory AppLoggingSettingsBigqueryExportSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsBigqueryExportSettings(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
