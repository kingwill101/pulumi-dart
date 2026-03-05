// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label.dart';
import 'incident_owner_info.dart';

/// {@template pulumi_securityinsights_incident_args_doc}
/// The set of arguments for Incident.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_incident_args_doc}
class IncidentArgs {
  /// The reason the incident was closed
  final pulumi.Input<String>? classification;
  /// Describes the reason the incident was closed
  final pulumi.Input<String>? classificationComment;
  /// The classification reason the incident was closed with
  final pulumi.Input<String>? classificationReason;
  /// The description of the incident
  final pulumi.Input<String>? description;
  /// The time of the first activity in the incident
  final pulumi.Input<String>? firstActivityTimeUtc;
  /// Incident ID
  final pulumi.Input<String>? incidentId;
  /// List of labels relevant to this incident
  final pulumi.Input<List<IncidentLabel>>? labels;
  /// The time of the last activity in the incident
  final pulumi.Input<String>? lastActivityTimeUtc;
  /// Describes a user that the incident is assigned to
  final pulumi.Input<IncidentOwnerInfo>? owner;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The severity of the incident
  final pulumi.Input<String> severity;
  /// The status of the incident
  final pulumi.Input<String> status;
  /// The title of the incident
  final pulumi.Input<String> title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IncidentArgs].
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed
  /// [classificationReason] The classification reason the incident was closed with
  /// [description] The description of the incident
  /// [firstActivityTimeUtc] The time of the first activity in the incident
  /// [incidentId] Incident ID
  /// [labels] List of labels relevant to this incident
  /// [lastActivityTimeUtc] The time of the last activity in the incident
  /// [owner] Describes a user that the incident is assigned to
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  /// [title] The title of the incident
  /// [workspaceName] The name of the workspace.
  IncidentArgs({
    this.classification,
    this.classificationComment,
    this.classificationReason,
    this.description,
    this.firstActivityTimeUtc,
    this.incidentId,
    this.labels,
    this.lastActivityTimeUtc,
    this.owner,
    required this.resourceGroupName,
    required this.severity,
    required this.status,
    required this.title,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'classificationComment': ?classificationComment,
      'classificationReason': ?classificationReason,
      'description': ?description,
      'firstActivityTimeUtc': ?firstActivityTimeUtc,
      'incidentId': ?incidentId,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<IncidentLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<IncidentLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastActivityTimeUtc': ?lastActivityTimeUtc,
      'owner': ?pulumi.Input.mapOptionalInputValue<IncidentOwnerInfo, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'severity': severity,
      'status': status,
      'title': title,
      'workspaceName': workspaceName,
    };
  }

  factory IncidentArgs.fromMap(Map<String, dynamic> map) {
    return IncidentArgs(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationComment: (() { final guardedValue = map['classificationComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationReason: (() { final guardedValue = map['classificationReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstActivityTimeUtc: (() { final guardedValue = map['firstActivityTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incidentId: (() { final guardedValue = map['incidentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IncidentLabel>(guardedValue, (value) => IncidentLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastActivityTimeUtc: (() { final guardedValue = map['lastActivityTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentOwnerInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

