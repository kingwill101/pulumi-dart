// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_data_source_args_doc}
/// Arguments for getDataSource.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_data_source_args_doc}
class GetDataSourceArgs {
  /// Name of the datasource
  final pulumi.Input<String> dataSourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetDataSourceArgs].
  /// [dataSourceName] Name of the datasource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetDataSourceArgs({
    required pulumi.Output<String> dataSourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataSourceName = pulumi.Input.asInput<String>(dataSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': dataSourceName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      dataSourceName: pulumi.Output.create<String>(map['dataSourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

