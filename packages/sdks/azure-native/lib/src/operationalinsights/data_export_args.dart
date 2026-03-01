// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_data_export_args_doc}
/// The set of arguments for DataExport.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_data_export_args_doc}
class DataExportArgs {
  /// The latest data export rule modification time.
  final pulumi.Input<String>? createdDate;
  /// The data export rule ID.
  final pulumi.Input<String>? dataExportId;
  /// The data export rule name.
  final pulumi.Input<String>? dataExportName;
  /// Active when enabled.
  final pulumi.Input<bool>? enable;
  /// Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account.
  final pulumi.Input<String>? eventHubName;
  /// Date and time when the export was last modified.
  final pulumi.Input<String>? lastModifiedDate;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The destination resource ID. This can be copied from the Properties entry of the destination resource in Azure.
  final pulumi.Input<String> resourceId;
  /// An array of tables to export, for example: [“Heartbeat, SecurityEvent”].
  final pulumi.Input<List<String>> tableNames;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataExportArgs].
  /// [createdDate] The latest data export rule modification time.
  /// [dataExportId] The data export rule ID.
  /// [dataExportName] The data export rule name.
  /// [enable] Active when enabled.
  /// [eventHubName] Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account.
  /// [lastModifiedDate] Date and time when the export was last modified.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The destination resource ID. This can be copied from the Properties entry of the destination resource in Azure.
  /// [tableNames] An array of tables to export, for example: [“Heartbeat, SecurityEvent”].
  /// [workspaceName] The name of the workspace.
  DataExportArgs({
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? dataExportId,
    pulumi.Output<String>? dataExportName,
    pulumi.Output<bool>? enable,
    pulumi.Output<String>? eventHubName,
    pulumi.Output<String>? lastModifiedDate,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceId,
    required pulumi.Output<List<String>> tableNames,
    required pulumi.Output<String> workspaceName,
  }) :
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      dataExportId = pulumi.Input.asOptionalInput<String>(dataExportId),
      dataExportName = pulumi.Input.asOptionalInput<String>(dataExportName),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      eventHubName = pulumi.Input.asOptionalInput<String>(eventHubName),
      lastModifiedDate = pulumi.Input.asOptionalInput<String>(lastModifiedDate),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      tableNames = pulumi.Input.asInput<List<String>>(tableNames),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'dataExportId': ?dataExportId,
      'dataExportName': ?dataExportName,
      'enable': ?enable,
      'eventHubName': ?eventHubName,
      'lastModifiedDate': ?lastModifiedDate,
      'resourceGroupName': resourceGroupName,
      'resourceId': resourceId,
      'tableNames': tableNames,
      'workspaceName': workspaceName,
    };
  }

  factory DataExportArgs.fromMap(Map<String, dynamic> map) {
    return DataExportArgs(
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      dataExportId: map['dataExportId'] == null ? null : pulumi.Output.create<String>(map['dataExportId'] as String),
      dataExportName: map['dataExportName'] == null ? null : pulumi.Output.create<String>(map['dataExportName'] as String),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      eventHubName: map['eventHubName'] == null ? null : pulumi.Output.create<String>(map['eventHubName'] as String),
      lastModifiedDate: map['lastModifiedDate'] == null ? null : pulumi.Output.create<String>(map['lastModifiedDate'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      tableNames: pulumi.Output.create<List<String>>((map['tableNames'] as List).cast<String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

