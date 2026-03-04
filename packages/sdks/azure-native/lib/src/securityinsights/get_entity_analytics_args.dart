// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_entity_analytics_args_doc}
/// Arguments for getEntityAnalytics.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_entity_analytics_args_doc}
class GetEntityAnalyticsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  final pulumi.Input<String> settingsName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEntityAnalyticsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsName] The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  /// [workspaceName] The name of the workspace.
  GetEntityAnalyticsArgs({
    required this.resourceGroupName,
    required this.settingsName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'settingsName': settingsName,
      'workspaceName': workspaceName,
    };
  }

  factory GetEntityAnalyticsArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityAnalyticsArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      settingsName: pulumi.Input.fromValue(map['settingsName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
