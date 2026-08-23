// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_table_args_doc}
class GetTableArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the table.
  final pulumi.Input<String> tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetTableArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableName] The name of the table.
  /// [workspaceName] The name of the workspace.
  const GetTableArgs({
    required this.resourceGroupName,
    required this.tableName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'tableName': tableName,
      'workspaceName': workspaceName,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
