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
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incidentId: pulumi.Input.fromValue(map['incidentId'] as String),
      incidentTaskId: (() { final guardedValue = map['incidentTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

