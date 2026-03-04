// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_data_export_rule_data_export_rule_args_doc}
/// The set of arguments for DataExportRule.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_data_export_rule_data_export_rule_args_doc}
class DataExportRuleArgs {
  /// The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  final pulumi.Input<String> destinationResourceId;

  /// Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? enabled;

  /// The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  final pulumi.Input<List<String>> tableNames;

  /// The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [DataExportRuleArgs].
  /// [destinationResourceId] The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  /// [enabled] Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  /// [name] The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  /// [tableNames] A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  /// [workspaceResourceId] The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  DataExportRuleArgs({
    required this.destinationResourceId,
    this.enabled,
    this.name,
    required this.resourceGroupName,
    required this.tableNames,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationResourceId': destinationResourceId,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tableNames': tableNames,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory DataExportRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataExportRuleArgs(
      destinationResourceId: pulumi.Input.fromValue(
        map['destinationResourceId'] as String,
      ),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tableNames: pulumi.Input.fromValue(
        (map['tableNames'] as List).cast<String>(),
      ),
      workspaceResourceId: pulumi.Input.fromValue(
        map['workspaceResourceId'] as String,
      ),
    );
  }
}
