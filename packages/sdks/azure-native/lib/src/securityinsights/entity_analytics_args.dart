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
  EntityAnalyticsArgs({
    pulumi.Output<List<String>>? entityProviders,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? settingsName,
    required pulumi.Output<String> workspaceName,
  }) :
      entityProviders = pulumi.Input.asOptionalInput<List<String>>(entityProviders),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settingsName = pulumi.Input.asOptionalInput<String>(settingsName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      entityProviders: map['entityProviders'] == null ? null : pulumi.Output.create<List<String>>((map['entityProviders'] as List).cast<String>()),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settingsName: map['settingsName'] == null ? null : pulumi.Output.create<String>(map['settingsName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

