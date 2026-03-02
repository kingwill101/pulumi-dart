// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for exporting conversations to [Insights](https://cloud.google.com/contact-center/insights/docs).
class GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings {
  /// If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  final pulumi.Input<bool>? enableInsightsExport;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings].
  /// [enableInsightsExport] If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings({
    this.enableInsightsExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInsightsExport': ?enableInsightsExport,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings(
      enableInsightsExport: map['enableInsightsExport'] == null ? null : (map['enableInsightsExport']! as bool).input(),
    );
  }
}

