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
    pulumi.Output<String>? classification,
    pulumi.Output<String>? classificationComment,
    pulumi.Output<String>? classificationReason,
    pulumi.Output<String>? description,
    pulumi.Output<String>? firstActivityTimeUtc,
    pulumi.Output<String>? incidentId,
    pulumi.Output<List<IncidentLabel>>? labels,
    pulumi.Output<String>? lastActivityTimeUtc,
    pulumi.Output<IncidentOwnerInfo>? owner,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> severity,
    required pulumi.Output<String> status,
    required pulumi.Output<String> title,
    required pulumi.Output<String> workspaceName,
  }) :
      classification = pulumi.Input.asOptionalInput<String>(classification),
      classificationComment = pulumi.Input.asOptionalInput<String>(classificationComment),
      classificationReason = pulumi.Input.asOptionalInput<String>(classificationReason),
      description = pulumi.Input.asOptionalInput<String>(description),
      firstActivityTimeUtc = pulumi.Input.asOptionalInput<String>(firstActivityTimeUtc),
      incidentId = pulumi.Input.asOptionalInput<String>(incidentId),
      labels = pulumi.Input.asOptionalInput<List<IncidentLabel>>(labels),
      lastActivityTimeUtc = pulumi.Input.asOptionalInput<String>(lastActivityTimeUtc),
      owner = pulumi.Input.asOptionalInput<IncidentOwnerInfo>(owner),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      severity = pulumi.Input.asInput<String>(severity),
      status = pulumi.Input.asInput<String>(status),
      title = pulumi.Input.asInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      classification: map['classification'] == null ? null : pulumi.Output.create<String>(map['classification'] as String),
      classificationComment: map['classificationComment'] == null ? null : pulumi.Output.create<String>(map['classificationComment'] as String),
      classificationReason: map['classificationReason'] == null ? null : pulumi.Output.create<String>(map['classificationReason'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      firstActivityTimeUtc: map['firstActivityTimeUtc'] == null ? null : pulumi.Output.create<String>(map['firstActivityTimeUtc'] as String),
      incidentId: map['incidentId'] == null ? null : pulumi.Output.create<String>(map['incidentId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<IncidentLabel>>(pulumi.Input.decodeList<IncidentLabel>(map['labels'], (value) => IncidentLabel.fromMap((value as Map).cast<String, dynamic>()))),
      lastActivityTimeUtc: map['lastActivityTimeUtc'] == null ? null : pulumi.Output.create<String>(map['lastActivityTimeUtc'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<IncidentOwnerInfo>(IncidentOwnerInfo.fromMap((map['owner'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      severity: pulumi.Output.create<String>(map['severity'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      title: pulumi.Output.create<String>(map['title'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

