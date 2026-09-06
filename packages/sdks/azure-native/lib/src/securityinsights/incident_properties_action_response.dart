// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label_response.dart';
import 'incident_owner_info_response.dart';

class IncidentPropertiesActionResponse {
  /// The reason the incident was closed
  final pulumi.Input<String?>? classification;
  /// Describes the reason the incident was closed.
  final pulumi.Input<String?>? classificationComment;
  /// The classification reason the incident was closed with
  final pulumi.Input<String?>? classificationReason;
  /// List of labels to add to the incident.
  final pulumi.Input<List<IncidentLabelResponse>?>? labels;
  /// Information on the user an incident is assigned to
  final pulumi.Input<IncidentOwnerInfoResponse?>? owner;
  /// The severity of the incident
  final pulumi.Input<String?>? severity;
  /// The status of the incident
  final pulumi.Input<String?>? status;

  /// Creates a new [IncidentPropertiesActionResponse].
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed.
  /// [classificationReason] The classification reason the incident was closed with
  /// [labels] List of labels to add to the incident.
  /// [owner] Information on the user an incident is assigned to
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  const IncidentPropertiesActionResponse({
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
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationComment: (() { final guardedValue = map['classificationComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationReason: (() { final guardedValue = map['classificationReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IncidentLabelResponse>(guardedValue, (value) => IncidentLabelResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentOwnerInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
