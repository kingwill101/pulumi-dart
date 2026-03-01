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
    pulumi.Output<ClientInfo>? createdBy,
    pulumi.Output<String>? description,
    required pulumi.Output<String> incidentId,
    pulumi.Output<String>? incidentTaskId,
    pulumi.Output<ClientInfo>? lastModifiedBy,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> status,
    required pulumi.Output<String> title,
    required pulumi.Output<String> workspaceName,
  }) :
      createdBy = pulumi.Input.asOptionalInput<ClientInfo>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      incidentId = pulumi.Input.asInput<String>(incidentId),
      incidentTaskId = pulumi.Input.asOptionalInput<String>(incidentTaskId),
      lastModifiedBy = pulumi.Input.asOptionalInput<ClientInfo>(lastModifiedBy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asInput<String>(status),
      title = pulumi.Input.asInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<ClientInfo>(ClientInfo.fromMap((map['createdBy'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      incidentId: pulumi.Output.create<String>(map['incidentId'] as String),
      incidentTaskId: map['incidentTaskId'] == null ? null : pulumi.Output.create<String>(map['incidentTaskId'] as String),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : pulumi.Output.create<ClientInfo>(ClientInfo.fromMap((map['lastModifiedBy'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      title: pulumi.Output.create<String>(map['title'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

