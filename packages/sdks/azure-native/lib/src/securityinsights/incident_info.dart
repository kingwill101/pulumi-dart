// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes related incident information for the bookmark
class IncidentInfo {
  /// Incident Id
  final pulumi.Input<String>? incidentId;
  /// Relation Name
  final pulumi.Input<String>? relationName;
  /// The severity of the incident
  final pulumi.Input<String>? severity;
  /// The title of the incident
  final pulumi.Input<String>? title;

  /// Creates a new [IncidentInfo].
  /// [incidentId] Incident Id
  /// [relationName] Relation Name
  /// [severity] The severity of the incident
  /// [title] The title of the incident
  IncidentInfo({
    this.incidentId,
    this.relationName,
    this.severity,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': ?incidentId,
      'relationName': ?relationName,
      'severity': ?severity,
      'title': ?title,
    };
  }

  factory IncidentInfo.fromMap(Map<String, dynamic> map) {
    return IncidentInfo(
      incidentId: map['incidentId'] == null ? null : (map['incidentId'] as String).input(),
      relationName: map['relationName'] == null ? null : (map['relationName'] as String).input(),
      severity: map['severity'] == null ? null : (map['severity'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

