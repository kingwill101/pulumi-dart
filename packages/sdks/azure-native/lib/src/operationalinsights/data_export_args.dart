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
  const DataExportArgs({
    this.createdDate,
    this.dataExportId,
    this.dataExportName,
    this.enable,
    this.eventHubName,
    this.lastModifiedDate,
    required this.resourceGroupName,
    required this.resourceId,
    required this.tableNames,
    required this.workspaceName,
  });

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
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExportId: (() { final guardedValue = map['dataExportId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExportName: (() { final guardedValue = map['dataExportName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      tableNames: pulumi.Input.fromValue((map['tableNames'] as List).cast<String>()),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

