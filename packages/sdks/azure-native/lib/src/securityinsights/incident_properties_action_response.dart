// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label_response.dart';
import 'incident_owner_info_response.dart';

class IncidentPropertiesActionResponse {
  /// The reason the incident was closed
  final pulumi.Input<String>? classification;
  /// Describes the reason the incident was closed.
  final pulumi.Input<String>? classificationComment;
  /// The classification reason the incident was closed with
  final pulumi.Input<String>? classificationReason;
  /// List of labels to add to the incident.
  final pulumi.Input<List<IncidentLabelResponse>>? labels;
  /// Information on the user an incident is assigned to
  final pulumi.Input<IncidentOwnerInfoResponse>? owner;
  /// The severity of the incident
  final pulumi.Input<String>? severity;
  /// The status of the incident
  final pulumi.Input<String>? status;

  /// Creates a new [IncidentPropertiesActionResponse].
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed.
  /// [classificationReason] The classification reason the incident was closed with
  /// [labels] List of labels to add to the incident.
  /// [owner] Information on the user an incident is assigned to
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  IncidentPropertiesActionResponse({
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
      'labels': ?pulumi.Input.mapOptionalInputValue<List<IncidentLabelResponse>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<IncidentLabelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?pulumi.Input.mapOptionalInputValue<IncidentOwnerInfoResponse, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'severity': ?severity,
      'status': ?status,
    };
  }

  factory IncidentPropertiesActionResponse.fromMap(Map<String, dynamic> map) {
    return IncidentPropertiesActionResponse(
      classification: map['classification'] == null ? null : (map['classification']! as String).input(),
      classificationComment: map['classificationComment'] == null ? null : (map['classificationComment']! as String).input(),
      classificationReason: map['classificationReason'] == null ? null : (map['classificationReason']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<IncidentLabelResponse>(map['labels']!, (value) => IncidentLabelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      owner: map['owner'] == null ? null : (IncidentOwnerInfoResponse.fromMap((map['owner']! as Map).cast<String, dynamic>())).input(),
      severity: map['severity'] == null ? null : (map['severity']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

