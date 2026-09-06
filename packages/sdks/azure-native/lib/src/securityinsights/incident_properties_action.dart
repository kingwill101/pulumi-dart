// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_label.dart';
import 'incident_owner_info.dart';

class IncidentPropertiesAction {
  /// The reason the incident was closed
  final pulumi.Input<dynamic>? classification;
  /// Describes the reason the incident was closed.
  final pulumi.Input<String?>? classificationComment;
  /// The classification reason the incident was closed with
  final pulumi.Input<dynamic>? classificationReason;
  /// List of labels to add to the incident.
  final pulumi.Input<List<IncidentLabel>?>? labels;
  /// Information on the user an incident is assigned to
  final pulumi.Input<IncidentOwnerInfo?>? owner;
  /// The severity of the incident
  final pulumi.Input<dynamic>? severity;
  /// The status of the incident
  final pulumi.Input<dynamic>? status;

  /// Creates a new [IncidentPropertiesAction].
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed.
  /// [classificationReason] The classification reason the incident was closed with
  /// [labels] List of labels to add to the incident.
  /// [owner] Information on the user an incident is assigned to
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  const IncidentPropertiesAction({
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
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      classificationComment: (() { final guardedValue = map['classificationComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationReason: (() { final guardedValue = map['classificationReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IncidentLabel>(guardedValue, (value) => IncidentLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentOwnerInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
