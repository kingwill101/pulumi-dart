// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataExportRule resources.
class DataExportRuleState {
  /// The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  final pulumi.Input<String>? destinationResourceId;
  /// Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the created Data Export Rule.
  final pulumi.Input<String>? exportRuleId;
  /// The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  final pulumi.Input<List<String>>? tableNames;
  /// The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [DataExportRuleState].
  /// [destinationResourceId] The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  /// [enabled] Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  /// [exportRuleId] The ID of the created Data Export Rule.
  /// [name] The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  /// [tableNames] A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  /// [workspaceResourceId] The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  DataExportRuleState({
    this.destinationResourceId,
    this.enabled,
    this.exportRuleId,
    this.name,
    this.resourceGroupName,
    this.tableNames,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationResourceId': ?destinationResourceId,
      'enabled': ?enabled,
      'exportRuleId': ?exportRuleId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tableNames': ?tableNames,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory DataExportRuleState.fromMap(Map<String, dynamic> map) {
    return DataExportRuleState(
      destinationResourceId: map['destinationResourceId'] == null ? null : (map['destinationResourceId'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      exportRuleId: map['exportRuleId'] == null ? null : (map['exportRuleId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tableNames: map['tableNames'] == null ? null : ((map['tableNames'] as List).cast<String>()).input(),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : (map['workspaceResourceId'] as String).input(),
    );
  }
}

