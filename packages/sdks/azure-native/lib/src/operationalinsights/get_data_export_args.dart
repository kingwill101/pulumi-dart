// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_data_export_args_doc}
/// Arguments for getDataExport.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_data_export_args_doc}
class GetDataExportArgs {
  /// The data export rule name.
  final pulumi.Input<String> dataExportName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetDataExportArgs].
  /// [dataExportName] The data export rule name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetDataExportArgs({
    required pulumi.Output<String> dataExportName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataExportName = pulumi.Input.asInput<String>(dataExportName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExportName': dataExportName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetDataExportArgs.fromMap(Map<String, dynamic> map) {
    return GetDataExportArgs(
      dataExportName: pulumi.Output.create<String>(map['dataExportName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

