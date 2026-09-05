// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthomationRuleActionIncident {
  /// The classification of the incident, when closing it. Possible values are: `BenignPositive_SuspiciousButExpected`, `FalsePositive_InaccurateData`, `FalsePositive_IncorrectAlertLogic`, `TruePositive_SuspiciousActivity` and `Undetermined`.
  ///
  /// &gt; **Note:** The `classification` is required when `status` is `Closed`.
  final pulumi.Input<String?>? classification;
  /// The comment why the incident is to be closed.
  ///
  /// &gt; **Note:** The `classificationComment` is allowed to set only when `status` is `Closed`.
  final pulumi.Input<String?>? classificationComment;
  /// Specifies a list of labels to add to the incident.
  final pulumi.Input<List<String>?>? labels;
  /// The execution order of this action.
  final pulumi.Input<int> order;
  /// The object ID of the entity this incident is assigned to.
  final pulumi.Input<String?>? ownerId;
  /// The severity to add to the incident. Possible values are `High`, `Informational`, `Low` and `Medium`.
  ///
  /// &gt; **Note:** At least one of `status`, `labels`, `ownerId` and `severity` has to be set.
  final pulumi.Input<String?>? severity;
  /// The status to set to the incident. Possible values are: `Active`, `Closed`, `New`.
  final pulumi.Input<String?>? status;

  /// Creates a new [AuthomationRuleActionIncident].
  /// [classification] The classification of the incident, when closing it. Possible values are: `BenignPositive_SuspiciousButExpected`, `FalsePositive_InaccurateData`, `FalsePositive_IncorrectAlertLogic`, `TruePositive_SuspiciousActivity` and `Undetermined`.
  /// [classificationComment] The comment why the incident is to be closed.
  /// [labels] Specifies a list of labels to add to the incident.
  /// [order] The execution order of this action.
  /// [ownerId] The object ID of the entity this incident is assigned to.
  /// [severity] The severity to add to the incident. Possible values are `High`, `Informational`, `Low` and `Medium`.
  /// [status] The status to set to the incident. Possible values are: `Active`, `Closed`, `New`.
  const AuthomationRuleActionIncident({
    this.classification,
    this.classificationComment,
    this.labels,
    required this.order,
    this.ownerId,
    this.severity,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'classificationComment': ?classificationComment,
      'labels': ?labels,
      'order': order,
      'ownerId': ?ownerId,
      'severity': ?severity,
      'status': ?status,
    };
  }

  factory AuthomationRuleActionIncident.fromMap(Map<String, dynamic> map) {
    return AuthomationRuleActionIncident(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationComment: (() { final guardedValue = map['classificationComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      order: pulumi.Input.fromValue((map['order'] as num).toInt()),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
