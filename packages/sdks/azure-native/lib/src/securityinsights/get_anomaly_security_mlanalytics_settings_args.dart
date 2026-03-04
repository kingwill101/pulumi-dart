// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_anomaly_security_mlanalytics_settings_args_doc}
/// Arguments for getAnomalySecurityMLAnalyticsSettings.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_anomaly_security_mlanalytics_settings_args_doc}
class GetAnomalySecurityMLAnalyticsSettingsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Security ML Analytics Settings resource name
  final pulumi.Input<String> settingsResourceName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetAnomalySecurityMLAnalyticsSettingsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsResourceName] Security ML Analytics Settings resource name
  /// [workspaceName] The name of the workspace.
  GetAnomalySecurityMLAnalyticsSettingsArgs({
    required this.resourceGroupName,
    required this.settingsResourceName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'settingsResourceName': settingsResourceName,
      'workspaceName': workspaceName,
    };
  }

  factory GetAnomalySecurityMLAnalyticsSettingsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAnomalySecurityMLAnalyticsSettingsArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      settingsResourceName: pulumi.Input.fromValue(
        map['settingsResourceName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
