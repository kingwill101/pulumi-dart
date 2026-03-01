// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleActionIncident {
  /// The classification of the incident, when closing it. Possible values are: `BenignPositive_SuspiciousButExpected`, `FalsePositive_InaccurateData`, `FalsePositive_IncorrectAlertLogic`, `TruePositive_SuspiciousActivity` and `Undetermined`.
  ///
  /// > **Note:** The `classification` is required when `status` is `Closed`.
  final String? classification;
  /// The comment why the incident is to be closed.
  ///
  /// > **Note:** The `classification_comment` is allowed to set only when `status` is `Closed`.
  final String? classificationComment;
  /// Specifies a list of labels to add to the incident.
  final List<String>? labels;
  /// The execution order of this action.
  final int order;
  /// The object ID of the entity this incident is assigned to.
  final String? ownerId;
  /// The severity to add to the incident. Possible values are `High`, `Informational`, `Low` and `Medium`.
  ///
  /// > **Note:** At least one of `status`, `labels`, `owner_id` and `severity` has to be set.
  final String? severity;
  /// The status to set to the incident. Possible values are: `Active`, `Closed`, `New`.
  final String? status;

  /// Creates a new [AutomationRuleActionIncident].
  /// [classification] The classification of the incident, when closing it. Possible values are: `BenignPositive_SuspiciousButExpected`, `FalsePositive_InaccurateData`, `FalsePositive_IncorrectAlertLogic`, `TruePositive_SuspiciousActivity` and `Undetermined`.
  /// [classificationComment] The comment why the incident is to be closed.
  /// [labels] Specifies a list of labels to add to the incident.
  /// [order] The execution order of this action.
  /// [ownerId] The object ID of the entity this incident is assigned to.
  /// [severity] The severity to add to the incident. Possible values are `High`, `Informational`, `Low` and `Medium`.
  /// [status] The status to set to the incident. Possible values are: `Active`, `Closed`, `New`.
  AutomationRuleActionIncident({
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

  factory AutomationRuleActionIncident.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionIncident(
      classification: map['classification'] == null ? null : map['classification'] as String,
      classificationComment: map['classificationComment'] == null ? null : map['classificationComment'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      order: map['order'] as int,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

