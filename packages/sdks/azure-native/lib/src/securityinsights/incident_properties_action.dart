// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label.dart';
import 'incident_owner_info.dart';

class IncidentPropertiesAction {
  /// The reason the incident was closed
  final pulumi.Input<String>? classification;
  /// Describes the reason the incident was closed.
  final pulumi.Input<String>? classificationComment;
  /// The classification reason the incident was closed with
  final pulumi.Input<String>? classificationReason;
  /// List of labels to add to the incident.
  final pulumi.Input<List<IncidentLabel>>? labels;
  /// Information on the user an incident is assigned to
  final pulumi.Input<IncidentOwnerInfo>? owner;
  /// The severity of the incident
  final pulumi.Input<String>? severity;
  /// The status of the incident
  final pulumi.Input<String>? status;

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
      'labels': ?pulumi.Input.mapOptionalInputValue<List<IncidentLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<IncidentLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?pulumi.Input.mapOptionalInputValue<IncidentOwnerInfo, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'severity': ?severity,
      'status': ?status,
    };
  }

  factory IncidentPropertiesAction.fromMap(Map<String, dynamic> map) {
    return IncidentPropertiesAction(
      classification: map['classification'] == null ? null : (map['classification']! as String).input(),
      classificationComment: map['classificationComment'] == null ? null : (map['classificationComment']! as String).input(),
      classificationReason: map['classificationReason'] == null ? null : (map['classificationReason']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<IncidentLabel>(map['labels']!, (value) => IncidentLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      owner: map['owner'] == null ? null : (IncidentOwnerInfo.fromMap((map['owner']! as Map).cast<String, dynamic>())).input(),
      severity: map['severity'] == null ? null : (map['severity']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

