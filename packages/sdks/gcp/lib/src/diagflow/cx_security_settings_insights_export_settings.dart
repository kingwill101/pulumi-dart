// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxSecuritySettingsInsightsExportSettings {
  /// If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  final pulumi.Input<bool> enableInsightsExport;

  /// Creates a new [CxSecuritySettingsInsightsExportSettings].
  /// [enableInsightsExport] If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  CxSecuritySettingsInsightsExportSettings({
    required this.enableInsightsExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableInsightsExport': enableInsightsExport};
  }

  factory CxSecuritySettingsInsightsExportSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxSecuritySettingsInsightsExportSettings(
      enableInsightsExport: pulumi.Input.fromValue(
        map['enableInsightsExport'] as bool,
      ),
    );
  }
}
