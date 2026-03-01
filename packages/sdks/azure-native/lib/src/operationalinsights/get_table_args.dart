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
  GetTableArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> tableName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asInput<String>(tableName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'tableName': tableName,
      'workspaceName': workspaceName,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

