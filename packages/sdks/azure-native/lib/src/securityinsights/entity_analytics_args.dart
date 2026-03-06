// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_entity_analytics_args_doc}
/// The set of arguments for EntityAnalytics.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_entity_analytics_args_doc}
class EntityAnalyticsArgs {
  /// The relevant entity providers that are synced
  final pulumi.Input<List<String>>? entityProviders;
  /// The kind of the setting
  /// Expected value is 'EntityAnalytics'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  final pulumi.Input<String>? settingsName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EntityAnalyticsArgs].
  /// [entityProviders] The relevant entity providers that are synced
  /// [kind] The kind of the setting
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsName] The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  /// [workspaceName] The name of the workspace.
  const EntityAnalyticsArgs({
    this.entityProviders,
    required this.kind,
    required this.resourceGroupName,
    this.settingsName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityProviders': ?entityProviders,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'settingsName': ?settingsName,
      'workspaceName': workspaceName,
    };
  }

  factory EntityAnalyticsArgs.fromMap(Map<String, dynamic> map) {
    return EntityAnalyticsArgs(
      entityProviders: (() { final guardedValue = map['entityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      settingsName: (() { final guardedValue = map['settingsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

