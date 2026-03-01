// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label.dart';
import 'incident_owner_info.dart';

class IncidentPropertiesAction {
  /// The reason the incident was closed
  final String? classification;
  /// Describes the reason the incident was closed.
  final String? classificationComment;
  /// The classification reason the incident was closed with
  final String? classificationReason;
  /// List of labels to add to the incident.
  final List<IncidentLabel>? labels;
  /// Information on the user an incident is assigned to
  final IncidentOwnerInfo? owner;
  /// The severity of the incident
  final String? severity;
  /// The status of the incident
  final String? status;

  /// Creates a new [IncidentPropertiesAction].
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed.
  /// [classificationReason] The classification reason the incident was closed with
  /// [labels] List of labels to add to the incident.
  /// [owner] Information on the user an incident is assigned to
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  IncidentPropertiesAction({
    this.classification,
    this.classificationComment,
    this.classificationReason,
    this.labels,
    this.owner,
    this.severity,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'classificationComment': ?classificationComment,
      'classificationReason': ?classificationReason,
      'labels': ?labels == null ? null : pulumi.Input.encodeList<IncidentLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'owner': ?owner == null ? null : owner!.toMap(),
      'severity': ?severity,
      'status': ?status,
    };
  }

  factory IncidentPropertiesAction.fromMap(Map<String, dynamic> map) {
    return IncidentPropertiesAction(
      classification: map['classification'] == null ? null : map['classification'] as String,
      classificationComment: map['classificationComment'] == null ? null : map['classificationComment'] as String,
      classificationReason: map['classificationReason'] == null ? null : map['classificationReason'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<IncidentLabel>(map['labels'], (value) => IncidentLabel.fromMap((value as Map).cast<String, dynamic>())),
      owner: map['owner'] == null ? null : IncidentOwnerInfo.fromMap((map['owner'] as Map).cast<String, dynamic>()),
      severity: map['severity'] == null ? null : map['severity'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

