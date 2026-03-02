// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info.dart';

/// {@template pulumi_securityinsights_incident_task_args_doc}
/// The set of arguments for IncidentTask.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_incident_task_args_doc}
class IncidentTaskArgs {
  /// Information on the client (user or application) that made some action
  final pulumi.Input<ClientInfo>? createdBy;
  /// The description of the task
  final pulumi.Input<String>? description;
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// Incident task ID
  final pulumi.Input<String>? incidentTaskId;
  /// Information on the client (user or application) that made some action
  final pulumi.Input<ClientInfo>? lastModifiedBy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The status of the task
  final pulumi.Input<String> status;
  /// The title of the task
  final pulumi.Input<String> title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IncidentTaskArgs].
  /// [createdBy] Information on the client (user or application) that made some action
  /// [description] The description of the task
  /// [incidentId] Incident ID
  /// [incidentTaskId] Incident task ID
  /// [lastModifiedBy] Information on the client (user or application) that made some action
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] The status of the task
  /// [title] The title of the task
  /// [workspaceName] The name of the workspace.
  IncidentTaskArgs({
    this.createdBy,
    this.description,
    required this.incidentId,
    this.incidentTaskId,
    this.lastModifiedBy,
    required this.resourceGroupName,
    required this.status,
    required this.title,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': ?pulumi.Input.mapOptionalInputValue<ClientInfo, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'description': ?description,
      'incidentId': incidentId,
      'incidentTaskId': ?incidentTaskId,
      'lastModifiedBy': ?pulumi.Input.mapOptionalInputValue<ClientInfo, Map<String, dynamic>>(lastModifiedBy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'status': status,
      'title': title,
      'workspaceName': workspaceName,
    };
  }

  factory IncidentTaskArgs.fromMap(Map<String, dynamic> map) {
    return IncidentTaskArgs(
      createdBy: map['createdBy'] == null ? null : (ClientInfo.fromMap((map['createdBy'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      incidentId: (map['incidentId'] as String).input(),
      incidentTaskId: map['incidentTaskId'] == null ? null : (map['incidentTaskId'] as String).input(),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : (ClientInfo.fromMap((map['lastModifiedBy'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      status: (map['status'] as String).input(),
      title: (map['title'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

